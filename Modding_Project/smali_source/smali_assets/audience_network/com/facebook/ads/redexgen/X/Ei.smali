.class public final Lcom/facebook/ads/redexgen/X/Ei;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/Ej;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/Eg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Eg<",
            "TT;>;"
        }
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Eh;

.field public A04:Ljava/io/IOException;

.field public A05:Ljava/lang/Thread;

.field public A06:Z

.field public final A07:I

.field public final A08:J

.field public final A09:Lcom/facebook/ads/redexgen/X/Ej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile A0A:Z

.field public final synthetic A0B:Lcom/facebook/ads/redexgen/X/lc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 679
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YmYVw2S8DUZhSIJBKV9mYTBB1tKcIZso"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NDdcnO0NsMMFHF2bezmvYcIUkVZ5OtU8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8rmJYKaybwW0Gr1XfrD6wU0k3D4t0vPA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YmCBBtrMVj6S7IBVYd0tuHNRqLOHp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BNlgZVMbySVAlN8KpxiSIEQEMbKarpeH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QLj0CyLyWcLoHh5we5tUZrDrecYjAsKC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eBbXtTNPiPKoehNQThYFNgHDUWIcJfTE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1Eh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ei;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ei;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/lc;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Ej;Lcom/facebook/ads/redexgen/X/Eg;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/facebook/ads/redexgen/X/Eg<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 35072
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    .local p3, "loadable":Lcom/facebook/ads/redexgen/X/Ej;, "TT;"
    .local p4, "callback":Lcom/facebook/ads/redexgen/X/Eg;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ei;->A0B:Lcom/facebook/ads/redexgen/X/lc;

    .line 35073
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35074
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ei;->A09:Lcom/facebook/ads/redexgen/X/Ej;

    .line 35075
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ei;->A02:Lcom/facebook/ads/redexgen/X/Eg;

    .line 35076
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Ei;->A07:I

    .line 35077
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Ei;->A08:J

    .line 35078
    return-void
.end method

.method private A00()J
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D36993743 Customized Hero Retry Delay Values"
    .end annotation

    .line 35079
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ei;->A01:I

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/hY;->A00(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ei;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Customized to support load retries"
    .end annotation

    .line 35080
    .local p4, "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 35081
    .local p0, "nowMs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A08:J

    sub-long v4, v2, v0

    .line 35082
    .local p2, "durationMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A02:Lcom/facebook/ads/redexgen/X/Eg;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ei;->A09:Lcom/facebook/ads/redexgen/X/Ej;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Ei;->A01:I

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Eg;->AE3(Lcom/facebook/ads/redexgen/X/Ej;JJI)V

    .line 35083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A04:Ljava/io/IOException;

    .line 35084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A0B:Lcom/facebook/ads/redexgen/X/lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lc;->A04(Lcom/facebook/ads/redexgen/X/lc;)Lcom/facebook/ads/redexgen/X/Ez;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A0B:Lcom/facebook/ads/redexgen/X/lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lc;->A02(Lcom/facebook/ads/redexgen/X/lc;)Lcom/facebook/ads/redexgen/X/Ei;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ez;->execute(Ljava/lang/Runnable;)V

    .line 35085
    return-void
.end method

.method private A03()V
    .locals 2

    .line 35086
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ei;->A0B:Lcom/facebook/ads/redexgen/X/lc;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lc;->A03(Lcom/facebook/ads/redexgen/X/lc;Lcom/facebook/ads/redexgen/X/Ei;)Lcom/facebook/ads/redexgen/X/Ei;

    .line 35087
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ei;->A0C:[B

    return-void

    :array_0
    .array-data 1
        -0x7at
        -0x57t
        -0x65t
        -0x62t
        -0x72t
        -0x65t
        -0x53t
        -0x5bt
        -0x63t
        -0x3dt
        -0x3et
        -0x63t
        -0x4ct
        -0x65t
        -0x4dt
        -0x45t
        -0x43t
        -0x40t
        -0x39t
        0x6et
        -0x4dt
        -0x40t
        -0x40t
        -0x43t
        -0x40t
        0x6et
        -0x46t
        -0x43t
        -0x51t
        -0x4et
        -0x49t
        -0x44t
        -0x4bt
        0x6et
        -0x3ft
        -0x3et
        -0x40t
        -0x4dt
        -0x51t
        -0x45t
        -0x1ct
        -0x3t
        -0xct
        0x7t
        -0x1t
        -0xct
        -0xet
        0x3t
        -0xct
        -0xdt
        -0x51t
        -0xct
        0x1t
        0x1t
        -0x2t
        0x1t
        -0x51t
        -0x5t
        -0x2t
        -0x10t
        -0xdt
        -0x8t
        -0x3t
        -0xat
        -0x51t
        0x2t
        0x3t
        0x1t
        -0xct
        -0x10t
        -0x4t
        0x5t
        0x1et
        0x15t
        0x28t
        0x20t
        0x15t
        0x13t
        0x24t
        0x15t
        0x14t
        -0x30t
        0x15t
        0x28t
        0x13t
        0x15t
        0x20t
        0x24t
        0x19t
        0x1ft
        0x1et
        -0x30t
        0x18t
        0x11t
        0x1et
        0x14t
        0x1ct
        0x19t
        0x1et
        0x17t
        -0x30t
        0x1ct
        0x1ft
        0x11t
        0x14t
        -0x30t
        0x13t
        0x1ft
        0x1dt
        0x20t
        0x1ct
        0x15t
        0x24t
        0x15t
        0x14t
        -0x3ft
        -0x26t
        -0x2ft
        -0x1ct
        -0x24t
        -0x2ft
        -0x31t
        -0x20t
        -0x2ft
        -0x30t
        -0x74t
        -0x2ft
        -0x1ct
        -0x31t
        -0x2ft
        -0x24t
        -0x20t
        -0x2bt
        -0x25t
        -0x26t
        -0x74t
        -0x28t
        -0x25t
        -0x33t
        -0x30t
        -0x2bt
        -0x26t
        -0x2dt
        -0x74t
        -0x21t
        -0x20t
        -0x22t
        -0x2ft
        -0x33t
        -0x27t
        0x19t
        0x1ct
        0xet
        0x11t
        -0x19t
    .end array-data
.end method


# virtual methods
.method public final A05(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35088
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A04:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A01:I

    if-gt v0, p1, :cond_1

    .line 35089
    :cond_0
    return-void

    .line 35090
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A04:Ljava/io/IOException;

    throw v0
.end method

.method public final A06(J)V
    .locals 4

    .line 35091
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A0B:Lcom/facebook/ads/redexgen/X/lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lc;->A02(Lcom/facebook/ads/redexgen/X/lc;)Lcom/facebook/ads/redexgen/X/Ei;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 35092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A0B:Lcom/facebook/ads/redexgen/X/lc;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/lc;->A03(Lcom/facebook/ads/redexgen/X/lc;Lcom/facebook/ads/redexgen/X/Ei;)Lcom/facebook/ads/redexgen/X/Ei;

    .line 35093
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 35094
    invoke-virtual {p0, v3, p1, p2}, Lcom/facebook/ads/redexgen/X/Ei;->sendEmptyMessageDelayed(IJ)Z

    .line 35095
    :goto_1
    return-void

    .line 35096
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ei;->A02()V

    goto :goto_1

    .line 35097
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A07(Z)V
    .locals 10

    .line 35098
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ei;->A0A:Z

    .line 35099
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Ei;->A04:Ljava/io/IOException;

    .line 35100
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Ei;->hasMessages(I)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    .line 35101
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A06:Z

    .line 35102
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Ei;->removeMessages(I)V

    .line 35103
    if-nez p1, :cond_0

    .line 35104
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ei;->sendEmptyMessage(I)Z

    .line 35105
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 35106
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ei;->A03()V

    .line 35107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 35108
    .local v8, "nowMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A02:Lcom/facebook/ads/redexgen/X/Eg;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Eg;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ei;->A09:Lcom/facebook/ads/redexgen/X/Ej;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A08:J

    sub-long v7, v5, v0

    .line 35109
    const/4 v9, 0x1

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Eg;->ADx(Lcom/facebook/ads/redexgen/X/Ej;JJZ)V

    .line 35110
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Ei;->A02:Lcom/facebook/ads/redexgen/X/Eg;

    .line 35111
    .end local v8    # "nowMs":J
    :cond_1
    return-void

    .line 35112
    :cond_2
    monitor-enter p0

    .line 35113
    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A06:Z

    .line 35114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A09:Lcom/facebook/ads/redexgen/X/Ej;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ej;->A4j()V

    .line 35115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ei;->A05:Ljava/lang/Thread;

    .line 35116
    .local v1, "executorThread":Ljava/lang/Thread;
    if-eqz v0, :cond_3

    .line 35117
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 35118
    .end local v1    # "executorThread":Ljava/lang/Thread;
    :cond_3
    monitor-exit p0

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "enableContinueLoadingLogging and currentLoadErrorAction saving are custom"
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ei;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    .local v1, "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ei;->A0D:[Ljava/lang/String;

    const-string v1, "QgUPNZuYIqR5G6UUc33KVEWLFVIzbhR6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    .line 35119
    .local v2, "msg":Landroid/os/Message;
    :try_start_0
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A0A:Z

    if-eqz v0, :cond_1

    .line 35120
    return-void

    .line 35121
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 35122
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Ei;->A02()V

    .line 35123
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A00:Z

    .line 35124
    return-void

    .line 35125
    .end local v1    # "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    .line 35126
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Ei;->A03()V

    .line 35127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 35128
    .local v4, "nowMs":J
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A08:J

    sub-long v8, v6, v0

    .line 35129
    .local p3, "durationMs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A02:Lcom/facebook/ads/redexgen/X/Eg;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Eg;

    .line 35130
    .local v6, "callback":Lcom/facebook/ads/redexgen/X/Eg;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A06:Z

    if-eqz v0, :cond_3

    .line 35131
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Ei;->A09:Lcom/facebook/ads/redexgen/X/Ej;

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Eg;->ADx(Lcom/facebook/ads/redexgen/X/Ej;JJZ)V

    .line 35132
    return-void

    .line 35133
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 35134
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A04:Ljava/io/IOException;

    .line 35135
    iget v1, v3, Lcom/facebook/ads/redexgen/X/Ei;->A01:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/redexgen/X/Ei;->A01:I

    .line 35136
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Ei;->A09:Lcom/facebook/ads/redexgen/X/Ej;

    iget-object v10, v3, Lcom/facebook/ads/redexgen/X/Ei;->A04:Ljava/io/IOException;

    iget v11, v3, Lcom/facebook/ads/redexgen/X/Ei;->A01:I

    .line 35137
    invoke-interface/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/Eg;->AE0(Lcom/facebook/ads/redexgen/X/Ej;JJLjava/io/IOException;I)Lcom/facebook/ads/redexgen/X/Eh;

    move-result-object v6

    .line 35138
    .local v0, "action":Lcom/facebook/ads/redexgen/X/Eh;
    iput-object v6, v3, Lcom/facebook/ads/redexgen/X/Ei;->A03:Lcom/facebook/ads/redexgen/X/Eh;

    .line 35139
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Eh;->A00(Lcom/facebook/ads/redexgen/X/Eh;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 35140
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Ei;->A0B:Lcom/facebook/ads/redexgen/X/lc;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A04:Ljava/io/IOException;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lc;->A05(Lcom/facebook/ads/redexgen/X/lc;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 35141
    :cond_4
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Eh;->A00(Lcom/facebook/ads/redexgen/X/Eh;)I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_7

    .line 35142
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Eh;->A00(Lcom/facebook/ads/redexgen/X/Eh;)I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    .line 35143
    iput v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A01:I

    .line 35144
    :cond_5
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A00:Z

    .line 35145
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Eh;->A01(Lcom/facebook/ads/redexgen/X/Eh;)J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v1

    if-eqz v0, :cond_6

    .line 35146
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Eh;->A01(Lcom/facebook/ads/redexgen/X/Eh;)J

    move-result-wide v0

    .line 35147
    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Ei;->A06(J)V

    goto :goto_1

    .line 35148
    :cond_6
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Ei;->A00()J

    move-result-wide v0

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35149
    .end local v0    # "action":Lcom/facebook/ads/redexgen/X/Eh;
    :pswitch_1
    :try_start_1
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Ei;->A09:Lcom/facebook/ads/redexgen/X/Ej;

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Eg;->ADz(Lcom/facebook/ads/redexgen/X/Ej;JJ)V

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35150
    :catch_0
    move-exception v5

    .line 35151
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ei;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x47

    const/16 v2, 0x2c

    const/16 v0, 0x76

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ei;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35152
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Ei;->A0B:Lcom/facebook/ads/redexgen/X/lc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/En;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/En;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lc;->A05(Lcom/facebook/ads/redexgen/X/lc;Ljava/io/IOException;)Ljava/io/IOException;

    .line 35153
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_7
    :goto_1
    return-void

    .line 35154
    .end local v4    # "nowMs":J
    .end local v6    # "callback":Lcom/facebook/ads/redexgen/X/Eg;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$Callback<TT;>;"
    .end local p3
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35155
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 35156
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    const/4 v5, 0x2

    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 35157
    :try_start_1
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A06:Z

    const/4 v4, 0x1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 35158
    .local v2, "shouldLoad":Z
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A05:Ljava/lang/Thread;

    .line 35159
    monitor-exit v3

    .line 35160
    if-eqz v1, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35161
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x96

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ei;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A09:Lcom/facebook/ads/redexgen/X/Ej;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4S;->A02(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 35162
    :try_start_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A09:Lcom/facebook/ads/redexgen/X/Ej;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ej;->AAi()V

    goto :goto_1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35163
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Ei;, "Lcom/facebook/ads/androidx/media3/exoplayer/upstream/Loader$LoadTask<TT;>;"
    :catchall_0
    :try_start_4
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 35164
    throw v0

    .line 35165
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 35166
    :cond_2
    monitor-enter v3

    .line 35167
    const/4 v0, 0x0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A05:Ljava/lang/Thread;

    .line 35168
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 35169
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 35170
    :try_start_6
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A0A:Z

    if-nez v0, :cond_4

    .line 35171
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Ei;->sendEmptyMessage(I)Z

    goto/16 :goto_2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 35172
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 35173
    .end local v2    # "shouldLoad":Z
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 35174
    :catch_0
    move-exception v5

    .line 35175
    .local v1, "e":Ljava/lang/Error;
    :try_start_b
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A0A:Z

    if-nez v0, :cond_3

    .line 35176
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ei;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x28

    const/16 v2, 0x1f

    const/16 v0, 0x55

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ei;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35177
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/Ei;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 35178
    :cond_3
    throw v5

    .line 35179
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v6

    .line 35180
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A0A:Z

    if-nez v0, :cond_4

    .line 35181
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ei;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    const/16 v2, 0x20

    const/16 v0, 0x14

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ei;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35182
    new-instance v0, Lcom/facebook/ads/redexgen/X/En;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/En;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5, v0}, Lcom/facebook/ads/redexgen/X/Ei;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 35183
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v6

    .line 35184
    .local v2, "e":Ljava/lang/Exception;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A0A:Z

    if-nez v0, :cond_4

    .line 35185
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ei;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x73

    const/16 v2, 0x23

    const/16 v0, 0x32

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ei;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35186
    new-instance v0, Lcom/facebook/ads/redexgen/X/En;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/En;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5, v0}, Lcom/facebook/ads/redexgen/X/Ei;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 35187
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 35188
    .local v2, "e":Ljava/io/IOException;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Ei;->A0A:Z

    if-nez v0, :cond_4

    .line 35189
    invoke-virtual {v3, v5, v1}, Lcom/facebook/ads/redexgen/X/Ei;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 35190
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    return-void
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
