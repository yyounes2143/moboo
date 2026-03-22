.class public final Lcom/facebook/ads/redexgen/X/F6;
.super Landroid/os/HandlerThread;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummySurfaceThread"
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/os/Handler;

.field public A01:Lcom/facebook/ads/redexgen/X/3e;

.field public A02:Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

.field public A03:Ljava/lang/Error;

.field public A04:Ljava/lang/RuntimeException;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 682
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6kuie4aYgPB75l0BZDCG97Ci8L2oTJru"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "l6cPtwgabkjuGz5CGYDwVz25JELI4cH1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZWx6OKWQHSAUUpB5i"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EzrPiu1XHV7NearbxEmg0OLwBftw8IiR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WDaMG3q3woavC04Kn8C74ndkvxFOsuJP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mphQp1xRvmcoCppqdKDkA9aBwN9eJkVD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Bip3dWfDJBluF0z6EYAQ2tUBnuWGs1iH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Qe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F6;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/F6;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35427
    const/16 v2, 0x4d

    const/16 v1, 0xc

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35428
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/F6;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    xor-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A06:[Ljava/lang/String;

    const-string v1, "ZYchz1gCfuPSGZN7lZw97cRKorp74rZl"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "DndbQji8K3ZDCB5sBvfJw1HHxvL19lCS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    xor-int/lit8 v0, p1, 0x6b

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 1

    .line 35429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/3e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/3e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3e;->A08()V

    .line 35431
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x59

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/F6;->A05:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0x3ct
        0x24t
        0x24t
        0x30t
        0x1at
        0x3ct
        0x3bt
        0x2ft
        0x28t
        0x2at
        0x2ct
        0x3at
        0x1dt
        0x15t
        0x10t
        0x19t
        0x18t
        0x5ct
        0x8t
        0x13t
        0x5ct
        0x15t
        0x12t
        0x15t
        0x8t
        0x15t
        0x1dt
        0x10t
        0x15t
        0x6t
        0x19t
        0x5ct
        0x18t
        0x9t
        0x11t
        0x11t
        0x5t
        0x5ct
        0xft
        0x9t
        0xet
        0x1at
        0x1dt
        0x1ft
        0x19t
        0x5et
        0x79t
        0x71t
        0x74t
        0x7dt
        0x7ct
        0x38t
        0x6ct
        0x77t
        0x38t
        0x6at
        0x7dt
        0x74t
        0x7dt
        0x79t
        0x6bt
        0x7dt
        0x38t
        0x7ct
        0x6dt
        0x75t
        0x75t
        0x61t
        0x38t
        0x6bt
        0x6dt
        0x6at
        0x7et
        0x79t
        0x7bt
        0x7dt
        0x31t
        0x20t
        0x38t
        0x38t
        0x2ct
        0x6t
        0x20t
        0x27t
        0x33t
        0x34t
        0x36t
        0x30t
    .end array-data
.end method

.method private A03(I)V
    .locals 4

    .line 35432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/3e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/3e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3e;->A09(I)V

    .line 35434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/3e;

    .line 35435
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3e;->A07()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;-><init>(Lcom/facebook/ads/redexgen/X/F6;Landroid/graphics/SurfaceTexture;ZLcom/facebook/ads/redexgen/X/F5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A02:Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    .line 35436
    return-void

    .line 35437
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A04(I)Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;
    .locals 4

    .line 35438
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F6;->start()V

    .line 35439
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F6;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A00:Landroid/os/Handler;

    .line 35440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3e;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3e;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/3e;

    .line 35441
    const/4 v3, 0x0

    .line 35442
    .local v0, "wasInterrupted":Z
    monitor-enter p0

    .line 35443
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F6;->A00:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 35444
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A02:Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Ljava/lang/Error;

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35445
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35446
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_0
    const/4 v3, 0x1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 35447
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 35448
    if-eqz v3, :cond_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35449
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 35450
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Ljava/lang/RuntimeException;

    if-nez v0, :cond_3

    .line 35451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Ljava/lang/Error;

    if-nez v0, :cond_2

    .line 35452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A02:Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    return-object v0

    .line 35453
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Ljava/lang/Error;

    throw v0

    .line 35454
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Ljava/lang/RuntimeException;

    throw v0

    .line 35455
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final A05()V
    .locals 2

    .line 35456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A00:Landroid/os/Handler;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35457
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A00:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 35458
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 35459
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 35460
    return v5

    .line 35461
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/F6;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35462
    :catchall_0
    move-exception v4

    .line 35463
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e

    const/16 v2, 0x1f

    const/16 v0, 0x73

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35464
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F6;->quit()Z

    .line 35465
    return v5

    .line 35466
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F6;->quit()Z

    .line 35467
    throw v0

    .line 35468
    :pswitch_1
    :try_start_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/F6;->A03(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 35469
    monitor-enter p0

    .line 35470
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 35471
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 35472
    :catch_0
    move-exception v4

    .line 35473
    .local v0, "e":Ljava/lang/Error;
    :try_start_4
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    const/16 v2, 0x22

    const/16 v0, 0x17

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35474
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 35475
    .end local v0    # "e":Ljava/lang/Error;
    monitor-enter p0

    .line 35476
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 35477
    monitor-exit p0

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 35478
    :catch_1
    move-exception v4

    .line 35479
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    const/16 v2, 0x22

    const/16 v0, 0x17

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35480
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 35481
    .end local v0    # "e":Ljava/lang/RuntimeException;
    monitor-enter p0

    .line 35482
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 35483
    monitor-exit p0

    .line 35484
    :goto_1
    return v5

    .line 35485
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    .line 35486
    :catchall_5
    move-exception v0

    monitor-enter p0

    .line 35487
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 35488
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 35489
    throw v0

    .line 35490
    :catchall_6
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
