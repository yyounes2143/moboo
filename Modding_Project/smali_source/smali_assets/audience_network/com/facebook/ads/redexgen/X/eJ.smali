.class public final Lcom/facebook/ads/redexgen/X/eJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/eI;,
        Lcom/facebook/ads/redexgen/X/eH;
    }
.end annotation


# static fields
.field public static A06:Lcom/facebook/ads/redexgen/X/4m;

.field public static A07:Lcom/facebook/ads/redexgen/X/BT;

.field public static A08:Lcom/facebook/ads/redexgen/X/Ln;

.field public static A09:Lcom/facebook/ads/redexgen/X/eJ;

.field public static A0A:Ljava/io/File;

.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Landroid/os/Handler;

.field public final A02:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/eH;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/BS;

.field public final A04:Lcom/facebook/ads/redexgen/X/cu;

.field public final A05:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2685
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AwMrvrZaA3qCUMe4DaWf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nMell2jjCxhf1iVkS1T4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JoDZxKxhXC6KTCYPanywHJvOgx3oSz2Q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c4TvbpAtmy9oRzm3BRhbekxSipSfphPN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JNxty2uNXQJQugnl9tUmEGg4l4lnFcO6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Bo5IZ2fGdsUyi7NqIQl4cfXztCU0TldF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nOSbM9ZPEjvtyh7HAXbSWFPDuf7zpKmZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/eJ;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/eJ;->A0D()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/BT;)V
    .locals 2

    .line 79996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79997
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A01:Landroid/os/Handler;

    .line 79998
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A02:Landroid/util/SparseArray;

    .line 79999
    new-instance v0, Lcom/facebook/ads/redexgen/X/eG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eG;-><init>(Lcom/facebook/ads/redexgen/X/eJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A05:Ljava/lang/Runnable;

    .line 80000
    new-instance v0, Lcom/facebook/ads/redexgen/X/CN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/CN;-><init>(Lcom/facebook/ads/redexgen/X/eJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A03:Lcom/facebook/ads/redexgen/X/BS;

    .line 80001
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eJ;->A04:Lcom/facebook/ads/redexgen/X/cu;

    .line 80002
    if-eqz p2, :cond_0

    .line 80003
    sput-object p2, Lcom/facebook/ads/redexgen/X/eJ;->A07:Lcom/facebook/ads/redexgen/X/BT;

    .line 80004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A03:Lcom/facebook/ads/redexgen/X/BS;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/BT;->A0F(Lcom/facebook/ads/redexgen/X/BS;)V

    .line 80005
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eJ;->A03()Lcom/facebook/ads/redexgen/X/BT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BT;->A0E()V

    .line 80006
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/eJ;)Landroid/os/Handler;
    .locals 0

    .line 80007
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A01:Landroid/os/Handler;

    return-object p0
.end method

.method public static declared-synchronized A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/4m;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/eJ;

    monitor-enter v1

    .line 80008
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A06:Lcom/facebook/ads/redexgen/X/4m;

    if-nez v0, :cond_0

    .line 80009
    new-instance v0, Lcom/facebook/ads/redexgen/X/no;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/no;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A06:Lcom/facebook/ads/redexgen/X/4m;

    .line 80010
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A06:Lcom/facebook/ads/redexgen/X/4m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80011
    .end local p0    # null:Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/9j;
    .locals 4

    .line 80012
    new-instance v3, Lcom/facebook/ads/redexgen/X/9j;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/9j;-><init>()V

    const/16 v2, 0x87

    const/4 v1, 0x3

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9j;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/9j;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9j;->A00(Lcom/facebook/ads/redexgen/X/5H;)Lcom/facebook/ads/redexgen/X/9j;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized A03()Lcom/facebook/ads/redexgen/X/BT;
    .locals 1

    monitor-enter p0

    .line 80013
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eJ;->A0E()V

    .line 80014
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A07:Lcom/facebook/ads/redexgen/X/BT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 80015
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/eJ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Ln;
    .locals 6

    const-class v5, Lcom/facebook/ads/redexgen/X/eJ;

    monitor-enter v5

    .line 80016
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A08:Lcom/facebook/ads/redexgen/X/Ln;

    if-nez v0, :cond_0

    .line 80017
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/eJ;->A07(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x79

    const/16 v1, 0xe

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80018
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A0T(Landroid/content/Context;)J

    move-result-wide v3

    new-instance v1, Lcom/facebook/ads/redexgen/X/7R;

    invoke-direct {v1, v3, v4}, Lcom/facebook/ads/redexgen/X/7R;-><init>(J)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ir;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ir;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/iw;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A08:Lcom/facebook/ads/redexgen/X/Ln;

    .line 80019
    .end local v1
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A08:Lcom/facebook/ads/redexgen/X/Ln;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v0

    .line 80020
    .end local p0    # null:Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/nk;Lcom/facebook/ads/redexgen/X/Ln;)Lcom/facebook/ads/redexgen/X/ix;
    .locals 1

    .line 80021
    new-instance v0, Lcom/facebook/ads/redexgen/X/ix;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ix;-><init>()V

    .line 80022
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ix;->A06(Lcom/facebook/ads/redexgen/X/Ln;)Lcom/facebook/ads/redexgen/X/ix;

    move-result-object v0

    .line 80023
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/ix;->A05(Lcom/facebook/ads/redexgen/X/4w;)Lcom/facebook/ads/redexgen/X/ix;

    move-result-object p0

    new-instance v0, Lcom/facebook/ads/redexgen/X/ne;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ne;-><init>()V

    .line 80024
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ix;->A04(Lcom/facebook/ads/redexgen/X/4w;)Lcom/facebook/ads/redexgen/X/ix;

    move-result-object p0

    .line 80025
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ix;->A03(I)Lcom/facebook/ads/redexgen/X/ix;

    move-result-object v0

    .line 80026
    return-object v0
.end method

.method public static declared-synchronized A06(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/eJ;
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/eJ;

    monitor-enter v2

    .line 80027
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A09:Lcom/facebook/ads/redexgen/X/eJ;

    if-nez v0, :cond_0

    .line 80028
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/eJ;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/eJ;-><init>(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/BT;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A09:Lcom/facebook/ads/redexgen/X/eJ;

    .line 80029
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A09:Lcom/facebook/ads/redexgen/X/eJ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 80030
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/cu;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized A07(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/eJ;

    monitor-enter v1

    .line 80031
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A0A:Ljava/io/File;

    if-nez v0, :cond_0

    .line 80032
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A0A:Ljava/io/File;

    .line 80033
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A0A:Ljava/io/File;

    if-nez v0, :cond_0

    .line 80034
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A0A:Ljava/io/File;

    .line 80035
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A0A:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80036
    .end local p0    # null:Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/eJ;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/cu;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 80037
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A1r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80038
    new-instance v0, Ljava/net/URI;

    .line 80039
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 80040
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 80041
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 80042
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80043
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80044
    return-object v0

    .line 80045
    :cond_0
    return-object v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80046
    :catch_0
    move-exception v0

    .line 80047
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0u:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 80048
    const/16 v2, 0x8a

    const/4 v1, 0x5

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 80049
    return-object v6
.end method

.method private A0A()V
    .locals 11

    .line 80050
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eJ;->A03()Lcom/facebook/ads/redexgen/X/BT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BT;->A0D()Ljava/util/List;

    move-result-object v0

    .line 80051
    .local v0, "downloadItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/B8;

    .line 80052
    .local v2, "downloadItem":Lcom/facebook/ads/redexgen/X/B8;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/B8;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 80053
    .local v3, "requestId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/eH;

    .line 80054
    .local v4, "downloadConfig":Lcom/facebook/ads/redexgen/X/eH;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/B8;->A02:I

    const/4 v0, 0x2

    const/4 v7, 0x1

    if-ne v1, v0, :cond_4

    .line 80055
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/B8;->A01()J

    move-result-wide v8

    const-wide/16 v1, 0x0

    cmp-long v0, v8, v1

    if-lez v0, :cond_4

    const/4 v8, 0x1

    .line 80056
    .local v5, "forceIsComplete":Z
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x45

    const/16 v1, 0xf

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x14

    const/16 v1, 0x19

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80057
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/B8;->A00()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80058
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/B8;->A01()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x2d

    const/16 v1, 0x9

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/B8;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80059
    if-eqz v5, :cond_1

    .line 80060
    iget v6, v4, Lcom/facebook/ads/redexgen/X/B8;->A02:I

    .line 80061
    .local v6, "state":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    if-nez v8, :cond_0

    .line 80062
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/B8;->A00()F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v1, v0

    if-gez v0, :cond_0

    .line 80063
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/B8;->A01()J

    move-result-wide v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/eJ;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/eJ;->A0C:[Ljava/lang/String;

    const-string v1, "Dot6Q3Penl8IgXRyTYIqC6CBr4bXo7x7"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "9ocSvY8ybipVJ0ZgVUYrz9Eev0RZQ1px"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/eH;->A00:J

    cmp-long v0, v8, v1

    if-lez v0, :cond_2

    .line 80064
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x13

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x36

    const/16 v1, 0x8

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/B8;->A01()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80065
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/eH;->A01:Lcom/facebook/ads/redexgen/X/eI;

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/eH;->A02:Z

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/eI;->AD5(Z)V

    .line 80066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 80067
    .end local v6    # "state":I
    :cond_1
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x75

    const/4 v1, 0x4

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x3e

    const/4 v1, 0x7

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/B8;->A01()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80068
    .end local v2    # "downloadItem":Lcom/facebook/ads/redexgen/X/B8;
    .end local v3    # "requestId":I
    .end local v4    # "downloadConfig":Lcom/facebook/ads/redexgen/X/eH;
    .end local v5    # "forceIsComplete":Z
    goto/16 :goto_0

    .line 80069
    :cond_2
    const/4 v0, 0x4

    if-eq v6, v0, :cond_3

    if-ne v6, v7, :cond_1

    .line 80070
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x67

    const/16 v1, 0xe

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80071
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/eH;->A01:Lcom/facebook/ads/redexgen/X/eI;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/B8;->A01:I

    .line 80072
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 80073
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/eI;->ADD(Ljava/lang/Throwable;)V

    .line 80074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 80075
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 80076
    :cond_6
    return-void
.end method

.method private A0B()V
    .locals 2

    .line 80077
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A00:Z

    if-nez v0, :cond_0

    .line 80078
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A00:Z

    .line 80079
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eJ;->A01:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A05:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80080
    :cond_0
    return-void
.end method

.method private A0C()V
    .locals 2

    .line 80081
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eJ;->A01:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A05:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A00:Z

    .line 80083
    return-void
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x8f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x6t
        0xbt
        0x49t
        0x52t
        0x5ft
        0x4et
        0x58t
        0x74t
        0x4ft
        0x44t
        0x5ct
        0x45t
        0x47t
        0x44t
        0x4at
        0x4ft
        0x4et
        0x4ft
        0x11t
        0x37t
        0x3at
        0x37t
        0x67t
        0x72t
        0x65t
        0x74t
        0x72t
        0x79t
        0x63t
        0x76t
        0x70t
        0x72t
        0x37t
        0x73t
        0x78t
        0x60t
        0x79t
        0x7bt
        0x78t
        0x76t
        0x73t
        0x72t
        0x73t
        0x2dt
        0x7bt
        0x76t
        0x7bt
        0x28t
        0x2ft
        0x3at
        0x2ft
        0x3et
        0x61t
        0x23t
        0x41t
        0x7at
        0x77t
        0x66t
        0x70t
        0x39t
        0x23t
        0x21t
        0x63t
        0x78t
        0x75t
        0x64t
        0x72t
        0x21t
        0x4t
        0x4t
        0x4t
        0x4t
        0x9t
        0x5bt
        0x4ct
        0x58t
        0x5ct
        0x4ct
        0x5at
        0x5dt
        0x60t
        0x4dt
        0x13t
        0x19t
        0x32t
        0x2at
        0x33t
        0x31t
        0x32t
        0x3ct
        0x39t
        0x38t
        0x39t
        0x73t
        0x7dt
        0xet
        0x29t
        0x3ct
        0x29t
        0x38t
        0x67t
        0x7dt
        0x3et
        0x9t
        0x9t
        0x14t
        0x9t
        0x55t
        0x5bt
        0x28t
        0xft
        0x1at
        0xft
        0x1et
        0x41t
        0x5bt
        0x6et
        0x5bt
        0x49t
        0x51t
        0x7et
        0x7bt
        0x71t
        0x68t
        0x32t
        0x7bt
        0x70t
        0x68t
        0x71t
        0x73t
        0x70t
        0x7et
        0x7bt
        0x6ct
        0x25t
        0x20t
        0x37t
        0x54t
        0x56t
        0x54t
        0x5ft
        0x52t
    .end array-data
.end method

.method private declared-synchronized A0E()V
    .locals 7

    monitor-enter p0

    .line 80084
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eJ;->A07:Lcom/facebook/ads/redexgen/X/BT;

    if-nez v0, :cond_0

    .line 80085
    new-instance v1, Lcom/facebook/ads/redexgen/X/BT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/eJ;->A04:Lcom/facebook/ads/redexgen/X/cu;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A04:Lcom/facebook/ads/redexgen/X/cu;

    .line 80086
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eJ;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/4m;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A04:Lcom/facebook/ads/redexgen/X/cu;

    .line 80087
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eJ;->A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Ln;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A04:Lcom/facebook/ads/redexgen/X/cu;

    .line 80088
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A0H(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/4w;

    move-result-object v5

    .line 80089
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/BT;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/4m;Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/4w;Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/facebook/ads/redexgen/X/eJ;->A07:Lcom/facebook/ads/redexgen/X/BT;

    .line 80090
    sget-object v1, Lcom/facebook/ads/redexgen/X/eJ;->A07:Lcom/facebook/ads/redexgen/X/BT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A03:Lcom/facebook/ads/redexgen/X/BS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BT;->A0F(Lcom/facebook/ads/redexgen/X/BS;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80091
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/eJ;
    :cond_0
    monitor-exit p0

    return-void

    .line 80092
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/eJ;)V
    .locals 0

    .line 80093
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eJ;->A0A()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/eJ;)V
    .locals 0

    .line 80094
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eJ;->A0C()V

    return-void
.end method


# virtual methods
.method public final A0H(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/4w;
    .locals 3

    .line 80095
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eJ;->A02()Lcom/facebook/ads/redexgen/X/9j;

    move-result-object v2

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/nk;

    invoke-direct {v1, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/nk;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5H;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 80096
    .local v0, "upstreamFactory":Lcom/facebook/ads/redexgen/X/nk;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/eJ;->A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Ln;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A05(Lcom/facebook/ads/redexgen/X/nk;Lcom/facebook/ads/redexgen/X/Ln;)Lcom/facebook/ads/redexgen/X/ix;

    move-result-object v0

    return-object v0
.end method

.method public final A0I(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/eI;J)V
    .locals 8

    .line 80097
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/eJ;->A04:Lcom/facebook/ads/redexgen/X/cu;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/eJ;->A09(Lcom/facebook/ads/redexgen/X/cu;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 80098
    .local v2, "cacheKey":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 80099
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80100
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/eJ;->A0J(Ljava/lang/String;)Z

    move-result v6

    .line 80101
    .local p1, "cacheHit":Z
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/BW;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/BW;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/BW;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/BW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BW;->A05()Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v1

    .line 80102
    .local p2, "downloadRequest":Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eJ;->A03()Lcom/facebook/ads/redexgen/X/BT;

    move-result-object v0

    .line 80103
    .local p3, "downloadManager":Lcom/facebook/ads/redexgen/X/BT;
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/BT;->A0G(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;)V

    .line 80104
    iget-object v0, v1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 80105
    .local p4, "actionId":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/eJ;->A02:Landroid/util/SparseArray;

    new-instance v2, Lcom/facebook/ads/redexgen/X/eH;

    const/4 v7, 0x0

    move-wide v4, p3

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/eH;-><init>(Lcom/facebook/ads/redexgen/X/eI;JZLcom/facebook/ads/redexgen/X/eG;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80106
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eJ;->A0B()V

    .line 80107
    return-void
.end method

.method public final A0J(Ljava/lang/String;)Z
    .locals 6

    .line 80108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eJ;->A04:Lcom/facebook/ads/redexgen/X/cu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eJ;->A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Ln;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ln;->A74(Ljava/lang/String;JJ)J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
