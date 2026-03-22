.class public final Lcom/facebook/ads/redexgen/X/Bv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Bu;,
        Lcom/facebook/ads/redexgen/X/Br;,
        Lcom/facebook/ads/redexgen/X/Bq;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Bq;

.field public A02:Lcom/facebook/ads/redexgen/X/Bu;

.field public final A03:Landroid/content/Context;

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

.field public final A06:Lcom/facebook/ads/redexgen/X/Br;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 625
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CYKD2nMMR2kwPobHu8vj2zaJDmBsbtuJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1T97HHMVTjXeNt4gEkhbfce0p1OpTQmk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SUWpzIO8VifItPl53IwYK2GxvFHViABr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RYVPvk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LWuCRuFF1x0IzMhL3qP3Bi6UDYkfn6RT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aSZX88VI8Agv5yyz6W8MmPiDkeOBfUV2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yvrxvgzWs1HIxL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zzJQ3nHJo9RAIXvSLHnZEz6WzVBAgkTr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Bv;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Bv;->A06()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Br;Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;)V
    .locals 1

    .line 31554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31555
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A03:Landroid/content/Context;

    .line 31556
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bv;->A06:Lcom/facebook/ads/redexgen/X/Br;

    .line 31557
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Bv;->A05:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    .line 31558
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4a;->A0Z()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A04:Landroid/os/Handler;

    .line 31559
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Bv;)Landroid/os/Handler;
    .locals 0

    .line 31560
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Bv;)Lcom/facebook/ads/redexgen/X/Bu;
    .locals 0

    .line 31561
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A02:Lcom/facebook/ads/redexgen/X/Bu;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bv;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 2

    .line 31562
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bv;->A05:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A03:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A07(Landroid/content/Context;)I

    move-result v1

    .line 31563
    .local v0, "notMetRequirements":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:I

    if-eq v0, v1, :cond_0

    .line 31564
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:I

    .line 31565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A06:Lcom/facebook/ads/redexgen/X/Br;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Br;->AEz(Lcom/facebook/ads/redexgen/X/Bv;I)V

    .line 31566
    :cond_0
    return-void
.end method

.method private A04()V
    .locals 1

    .line 31567
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 31568
    return-void

    .line 31569
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bv;->A03()V

    .line 31570
    return-void
.end method

.method private A05()V
    .locals 4

    .line 31571
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Bv;->A03:Landroid/content/Context;

    .line 31572
    const/16 v2, 0x137

    const/16 v1, 0xc

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bv;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 31573
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bu;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Bu;-><init>(Lcom/facebook/ads/redexgen/X/Bv;Lcom/facebook/ads/redexgen/X/Bp;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A02:Lcom/facebook/ads/redexgen/X/Bu;

    .line 31574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A02:Lcom/facebook/ads/redexgen/X/Bu;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 31575
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x143

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Bv;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x18t
        -0xbt
        -0x15t
        -0x7t
        -0xat
        -0x10t
        -0x15t
        -0x4bt
        -0x10t
        -0xbt
        -0x5t
        -0x14t
        -0xbt
        -0x5t
        -0x4bt
        -0x18t
        -0x16t
        -0x5t
        -0x10t
        -0xat
        -0xbt
        -0x4bt
        -0x38t
        -0x36t
        -0x25t
        -0x30t
        -0x2at
        -0x2bt
        -0x1at
        -0x29t
        -0x2at
        -0x22t
        -0x34t
        -0x27t
        -0x1at
        -0x36t
        -0x2at
        -0x2bt
        -0x2bt
        -0x34t
        -0x36t
        -0x25t
        -0x34t
        -0x35t
        -0x2ct
        -0x1ft
        -0x29t
        -0x1bt
        -0x1et
        -0x24t
        -0x29t
        -0x5ft
        -0x24t
        -0x1ft
        -0x19t
        -0x28t
        -0x1ft
        -0x19t
        -0x5ft
        -0x2ct
        -0x2at
        -0x19t
        -0x24t
        -0x1et
        -0x1ft
        -0x5ft
        -0x4ct
        -0x4at
        -0x39t
        -0x44t
        -0x3et
        -0x3ft
        -0x2et
        -0x3dt
        -0x3et
        -0x36t
        -0x48t
        -0x3bt
        -0x2et
        -0x49t
        -0x44t
        -0x3at
        -0x4at
        -0x3et
        -0x3ft
        -0x3ft
        -0x48t
        -0x4at
        -0x39t
        -0x48t
        -0x49t
        0x39t
        0x46t
        0x3ct
        0x4at
        0x47t
        0x41t
        0x3ct
        0x6t
        0x41t
        0x46t
        0x4ct
        0x3dt
        0x46t
        0x4ct
        0x6t
        0x39t
        0x3bt
        0x4ct
        0x41t
        0x47t
        0x46t
        0x6t
        0x1ct
        0x1dt
        0x2et
        0x21t
        0x1bt
        0x1dt
        0x37t
        0x2bt
        0x2ct
        0x27t
        0x2at
        0x19t
        0x1ft
        0x1dt
        0x37t
        0x24t
        0x27t
        0x2ft
        -0x25t
        -0x18t
        -0x22t
        -0x14t
        -0x17t
        -0x1dt
        -0x22t
        -0x58t
        -0x1dt
        -0x18t
        -0x12t
        -0x21t
        -0x18t
        -0x12t
        -0x58t
        -0x25t
        -0x23t
        -0x12t
        -0x1dt
        -0x17t
        -0x18t
        -0x58t
        -0x42t
        -0x41t
        -0x30t
        -0x3dt
        -0x43t
        -0x41t
        -0x27t
        -0x33t
        -0x32t
        -0x37t
        -0x34t
        -0x45t
        -0x3ft
        -0x41t
        -0x27t
        -0x37t
        -0x3bt
        0x23t
        0x30t
        0x26t
        0x34t
        0x31t
        0x2bt
        0x26t
        -0x10t
        0x2bt
        0x30t
        0x36t
        0x27t
        0x30t
        0x36t
        -0x10t
        0x23t
        0x25t
        0x36t
        0x2bt
        0x31t
        0x30t
        -0x10t
        0x15t
        0x5t
        0x14t
        0x7t
        0x7t
        0x10t
        0x21t
        0x11t
        0x8t
        0x8t
        -0x4t
        0x9t
        -0x1t
        0xdt
        0xat
        0x4t
        -0x1t
        -0x37t
        0x4t
        0x9t
        0xft
        0x0t
        0x9t
        0xft
        -0x37t
        -0x4t
        -0x2t
        0xft
        0x4t
        0xat
        0x9t
        -0x37t
        -0x12t
        -0x22t
        -0x13t
        -0x20t
        -0x20t
        -0x17t
        -0x6t
        -0x16t
        -0x17t
        -0x26t
        -0x19t
        -0x23t
        -0x15t
        -0x18t
        -0x1et
        -0x23t
        -0x59t
        -0x19t
        -0x22t
        -0x13t
        -0x59t
        -0x24t
        -0x18t
        -0x19t
        -0x19t
        -0x59t
        -0x44t
        -0x38t
        -0x39t
        -0x39t
        -0x42t
        -0x44t
        -0x33t
        -0x3et
        -0x31t
        -0x3et
        -0x33t
        -0x2et
        -0x28t
        -0x44t
        -0x3ft
        -0x46t
        -0x39t
        -0x40t
        -0x42t
        0x43t
        0x50t
        0x46t
        0x54t
        0x51t
        0x4bt
        0x46t
        0x10t
        0x51t
        0x55t
        0x10t
        0x43t
        0x45t
        0x56t
        0x4bt
        0x51t
        0x50t
        0x10t
        0x26t
        0x27t
        0x38t
        0x2bt
        0x25t
        0x27t
        0x41t
        0x2bt
        0x26t
        0x2et
        0x27t
        0x41t
        0x2ft
        0x31t
        0x26t
        0x27t
        0x41t
        0x25t
        0x2at
        0x23t
        0x30t
        0x29t
        0x27t
        0x26t
        -0xft
        -0x3t
        -0x4t
        -0x4t
        -0xdt
        -0xft
        0x2t
        -0x9t
        0x4t
        -0x9t
        0x2t
        0x7t
    .end array-data
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Bv;)V
    .locals 0

    .line 31576
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bv;->A03()V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Bv;)V
    .locals 0

    .line 31577
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bv;->A04()V

    return-void
.end method


# virtual methods
.method public final A09()I
    .locals 5

    .line 31578
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bv;->A05:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A03:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A07(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:I

    .line 31579
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 31580
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A05:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    invoke-virtual {v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A0A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31581
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_6

    .line 31582
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bv;->A05()V

    .line 31583
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A05:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    invoke-virtual {v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A08()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31584
    const/4 v2, 0x0

    const/16 v1, 0x2c

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bv;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31585
    const/16 v2, 0x2c

    const/16 v1, 0x2f

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bv;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31586
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A05:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    invoke-virtual {v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A09()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31587
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_4

    .line 31588
    const/16 v2, 0x10d

    const/16 v1, 0x2a

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bv;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31589
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A05:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    invoke-virtual {v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A0B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31590
    const/16 v2, 0x5b

    const/16 v1, 0x28

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bv;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31591
    const/16 v2, 0x83

    const/16 v1, 0x27

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bv;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31592
    :cond_3
    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bq;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Bq;-><init>(Lcom/facebook/ads/redexgen/X/Bv;Lcom/facebook/ads/redexgen/X/Bp;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A01:Lcom/facebook/ads/redexgen/X/Bq;

    .line 31593
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bv;->A03:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bv;->A01:Lcom/facebook/ads/redexgen/X/Bq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A04:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 31594
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:I

    return v0

    .line 31595
    :cond_4
    const/16 v2, 0xca

    const/16 v1, 0x1f

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bv;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31596
    const/16 v2, 0xaa

    const/16 v1, 0x20

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bv;->A02(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bv;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bv;->A08:[Ljava/lang/String;

    const-string v1, "34fJRbWthZD6PtxUK55RQZaVQ6NgySS1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    .line 31597
    :cond_6
    const/16 v2, 0xe9

    const/16 v1, 0x24

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bv;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final A0A()Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;
    .locals 1

    .line 31598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A05:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    return-object v0
.end method
