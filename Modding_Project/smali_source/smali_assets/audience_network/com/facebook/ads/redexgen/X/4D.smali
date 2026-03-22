.class public final Lcom/facebook/ads/redexgen/X/4D;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4C;,
        Lcom/facebook/ads/redexgen/X/4B;,
        Lcom/facebook/ads/redexgen/X/4A;
    }
.end annotation


# static fields
.field public static A04:Lcom/facebook/ads/redexgen/X/4D;

.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Landroid/os/Handler;

.field public final A02:Ljava/lang/Object;

.field public final A03:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/4B;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 274
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7spJOR808jvRvy0GNSJxo7ZJ6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "86KvIandX8vj142355r0drGuD0jhaT0W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mZfZ3s6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1QsEKJVAx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "twpDIoiDpzCAIzfG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "B"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RSZaC18qSGa0csTWoF4Keu66v9ytRHBi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eBKWjsIIuU1hX4JwQhfiQu0nhoXTyGkQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4D;->A06()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 12086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12087
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:Landroid/os/Handler;

    .line 12088
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12089
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/lang/Object;

    .line 12090
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    .line 12091
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 12092
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    const/16 v1, 0x24

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4D;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12093
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4C;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/4C;-><init>(Lcom/facebook/ads/redexgen/X/4D;Lcom/facebook/ads/redexgen/X/48;)V

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12094
    return-void
.end method

.method public static A00(Landroid/content/Context;)I
    .locals 3

    .line 12095
    const/16 v2, 0x24

    const/16 v1, 0xc

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4D;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 12096
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 12097
    return v0

    .line 12098
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 12099
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12100
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 12101
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 12102
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 12103
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 12104
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 12105
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 12106
    :pswitch_4
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/4D;->A02(Landroid/net/NetworkInfo;)I

    move-result v0

    return v0

    .line 12107
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .local v2, "e":Ljava/lang/SecurityException;
    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic A01(Landroid/content/Context;)I
    .locals 0

    .line 12108
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4D;->A00(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static A02(Landroid/net/NetworkInfo;)I
    .locals 3

    .line 12109
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 12110
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 12111
    :pswitch_1
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    const/16 v0, 0x9

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12112
    :pswitch_2
    const/4 p0, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    const-string v1, "Xq0rs7E"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return p0

    .line 12113
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 12114
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 12115
    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/4D;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/4D;

    monitor-enter v1

    .line 12116
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/4D;->A04:Lcom/facebook/ads/redexgen/X/4D;

    if-nez v0, :cond_0

    .line 12117
    new-instance v0, Lcom/facebook/ads/redexgen/X/4D;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4D;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4D;->A04:Lcom/facebook/ads/redexgen/X/4D;

    .line 12118
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/4D;->A04:Lcom/facebook/ads/redexgen/X/4D;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12119
    .end local p0    # null:Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4D;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 3

    .line 12120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 12121
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/androidx/media3/common/util/NetworkTypeObserver$Listener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12123
    :cond_1
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4D;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x56t
        0x5ct
        0x4at
        0x57t
        0x51t
        0x5ct
        0x16t
        0x56t
        0x5dt
        0x4ct
        0x16t
        0x5bt
        0x57t
        0x56t
        0x56t
        0x16t
        0x7bt
        0x77t
        0x76t
        0x76t
        0x7dt
        0x7bt
        0x6ct
        0x71t
        0x6et
        0x71t
        0x6ct
        0x61t
        0x67t
        0x7bt
        0x70t
        0x79t
        0x76t
        0x7ft
        0x7dt
        0x63t
        0x6ft
        0x6et
        0x6et
        0x65t
        0x63t
        0x74t
        0x69t
        0x76t
        0x69t
        0x74t
        0x79t
    .end array-data
.end method

.method private A07(I)V
    .locals 3

    .line 12124
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/lang/Object;

    monitor-enter v1

    .line 12125
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    if-ne v0, p1, :cond_0

    .line 12126
    monitor-exit v1

    return-void

    .line 12127
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    .line 12128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 12130
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/androidx/media3/common/util/NetworkTypeObserver$Listener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4B;

    .line 12131
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/4B;
    if-eqz v0, :cond_1

    .line 12132
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/4B;->AEM(I)V

    goto :goto_0

    .line 12133
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12134
    :cond_2
    return-void

    .line 12135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/4D;I)V
    .locals 0

    .line 12136
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4D;->A07(I)V

    return-void
.end method


# virtual methods
.method public final A09()I
    .locals 2

    .line 12137
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/lang/Object;

    monitor-enter v1

    .line 12138
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    monitor-exit v1

    return v0

    .line 12139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 2

    .line 12140
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4D;->A05()V

    .line 12141
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 12142
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/47;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/47;-><init>(Lcom/facebook/ads/redexgen/X/4D;Lcom/facebook/ads/redexgen/X/4B;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12143
    return-void
.end method

.method public final synthetic A0B(Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 1

    .line 12144
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4D;->A09()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/4B;->AEM(I)V

    return-void
.end method
