.class public final Lcom/facebook/ads/redexgen/X/OO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ON;,
        Lcom/facebook/ads/redexgen/X/OM;
    }
.end annotation


# static fields
.field public static A05:Lcom/facebook/ads/redexgen/X/OO;

.field public static A06:[B

.field public static final A07:Ljava/lang/Object;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Landroid/os/Handler;

.field public final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/OM;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/ON;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/ON;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1452
    invoke-static {}, Lcom/facebook/ads/redexgen/X/OO;->A03()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/OO;->A07:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A04:Ljava/util/HashMap;

    .line 55446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A03:Ljava/util/HashMap;

    .line 55447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A02:Ljava/util/ArrayList;

    .line 55448
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OO;->A00:Landroid/content/Context;

    .line 55449
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OL;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/OL;-><init>(Lcom/facebook/ads/redexgen/X/OO;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A01:Landroid/os/Handler;

    .line 55450
    return-void
.end method

.method public static A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/OO;
    .locals 3

    .line 55451
    sget-object v2, Lcom/facebook/ads/redexgen/X/OO;->A07:Ljava/lang/Object;

    monitor-enter v2

    .line 55452
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/OO;->A05:Lcom/facebook/ads/redexgen/X/OO;

    if-nez v0, :cond_0

    .line 55453
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/OO;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/OO;->A05:Lcom/facebook/ads/redexgen/X/OO;

    .line 55454
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/OO;->A05:Lcom/facebook/ads/redexgen/X/OO;

    monitor-exit v2

    return-object v0

    .line 55455
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OO;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3f

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
    .locals 8

    .line 55456
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OO;->A04:Ljava/util/HashMap;

    monitor-enter v1

    .line 55457
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55458
    .local v1, "N":I
    if-gtz v0, :cond_1

    .line 55459
    monitor-exit v1

    goto :goto_2

    .line 55460
    :cond_1
    new-array v7, v0, [Lcom/facebook/ads/redexgen/X/OM;

    .line 55461
    .local v2, "brs":[Lcom/facebook/ads/redexgen/X/OM;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55463
    .end local v1    # "N":I
    monitor-exit v1

    .line 55464
    const/4 v6, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "i":I
    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_0

    .line 55465
    aget-object v5, v7, v6

    .line 55466
    .local v1, "br":Lcom/facebook/ads/redexgen/X/OM;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/OM;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 55467
    .local v3, "nbr":I
    const/4 v3, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 55468
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/OM;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ON;

    .line 55469
    .local v5, "rec":Lcom/facebook/ads/redexgen/X/ON;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/ON;->A01:Z

    if-nez v0, :cond_2

    .line 55470
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/ON;->A02:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OO;->A00:Landroid/content/Context;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/OM;->A00:Landroid/content/Intent;

    invoke-virtual {v2, v1, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55471
    .end local v5    # "rec":Lcom/facebook/ads/redexgen/X/ON;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55472
    .end local v1    # "br":Lcom/facebook/ads/redexgen/X/OM;
    .end local v3    # "nbr":I
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 55473
    :goto_2
    return-void

    .line 55474
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xb3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OO;->A06:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0xbt
        0x6dt
        0x42t
        0x47t
        0x5ft
        0x4et
        0x59t
        0xbt
        0x4ft
        0x42t
        0x4ft
        0xbt
        0x45t
        0x44t
        0x5ft
        0xbt
        0x46t
        0x4at
        0x5ft
        0x48t
        0x43t
        0x11t
        0xbt
        0x5ft
        0x5ft
        0x39t
        0x16t
        0x13t
        0xbt
        0x1at
        0xdt
        0x5ft
        0x12t
        0x1et
        0xbt
        0x1ct
        0x17t
        0x1at
        0x1bt
        0x5et
        0x5ft
        0x5ft
        0x12t
        0x1et
        0xbt
        0x1ct
        0x17t
        0x42t
        0x4ft
        0x7t
        0x2at
        0x65t
        0x6ct
        0x2at
        0x63t
        0x64t
        0x7et
        0x6ft
        0x64t
        0x7et
        0x2at
        0x25t
        0x76t
        0x66t
        0x6dt
        0x60t
        0x68t
        0x60t
        0x25t
        0x56t
        0x74t
        0x63t
        0x7et
        0x78t
        0x79t
        0x37t
        0x7bt
        0x7et
        0x64t
        0x63t
        0x2dt
        0x37t
        0x54t
        0x77t
        0x7bt
        0x79t
        0x74t
        0x5at
        0x6at
        0x77t
        0x79t
        0x7ct
        0x7bt
        0x79t
        0x6bt
        0x6ct
        0x55t
        0x79t
        0x76t
        0x79t
        0x7ft
        0x7dt
        0x6at
        0x18t
        0x34t
        0x21t
        0x36t
        0x3dt
        0x3ct
        0x3bt
        0x32t
        0x75t
        0x34t
        0x32t
        0x34t
        0x3ct
        0x3bt
        0x26t
        0x21t
        0x75t
        0x33t
        0x3ct
        0x39t
        0x21t
        0x30t
        0x27t
        0x75t
        0x18t
        0x2ft
        0x39t
        0x25t
        0x26t
        0x3ct
        0x23t
        0x24t
        0x2dt
        0x6at
        0x3et
        0x33t
        0x3at
        0x2ft
        0x6at
        0x38t
        0x3at
        0x2dt
        0x30t
        0x36t
        0x37t
        0x4et
        0x4ct
        0x59t
        0x48t
        0x4at
        0x42t
        0x5ft
        0x54t
        0xct
        0x9t
        0x1ct
        0x9t
        0x48t
        0x45t
        0x4ct
        0x59t
        0x5bt
        0x40t
        0x45t
        0x40t
        0x41t
        0x59t
        0x40t
        0xet
        0x5ct
        0x4bt
        0x4ft
        0x5dt
        0x41t
        0x40t
    .end array-data
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/OO;)V
    .locals 0

    .line 55475
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OO;->A02()V

    return-void
.end method


# virtual methods
.method public final A05(Landroid/content/BroadcastReceiver;)V
    .locals 11

    .line 55476
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/OO;->A04:Ljava/util/HashMap;

    monitor-enter v9

    .line 55477
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 55478
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v10, :cond_0

    .line 55479
    monitor-exit v9

    return-void

    .line 55480
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v7, 0x1

    sub-int/2addr v8, v7

    .local v2, "i":I
    :goto_0
    if-ltz v8, :cond_5

    .line 55481
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/ON;

    .line 55482
    .local v4, "filter":Lcom/facebook/ads/redexgen/X/ON;
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/ON;->A01:Z

    .line 55483
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/ON;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 55484
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/ON;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    .line 55485
    .local v6, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 55486
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v3, :cond_3

    .line 55487
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    .local v8, "k":I
    :goto_2
    if-ltz v2, :cond_2

    .line 55488
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ON;

    .line 55489
    .local v9, "rec":Lcom/facebook/ads/redexgen/X/ON;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ON;->A02:Landroid/content/BroadcastReceiver;

    if-ne v0, p1, :cond_1

    .line 55490
    iput-boolean v7, v1, Lcom/facebook/ads/redexgen/X/ON;->A01:Z

    .line 55491
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 55492
    .end local v9    # "rec":Lcom/facebook/ads/redexgen/X/ON;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 55493
    .end local v8    # "k":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 55494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55495
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55496
    .end local v4    # "filter":Lcom/facebook/ads/redexgen/X/ON;
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 55497
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v2    # "i":I
    :cond_5
    monitor-exit v9

    .line 55498
    return-void

    .line 55499
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A06(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 7

    .line 55500
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/OO;->A04:Ljava/util/HashMap;

    monitor-enter v6

    .line 55501
    :try_start_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/ON;

    invoke-direct {v5, p2, p1}, Lcom/facebook/ads/redexgen/X/ON;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 55502
    .local v1, "entry":Lcom/facebook/ads/redexgen/X/ON;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 55503
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 55504
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 55505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55506
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55507
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 55508
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    .line 55509
    .local v5, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 55510
    .local v6, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_1

    .line 55511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 55512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OO;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55513
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55514
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55515
    .end local v1    # "entry":Lcom/facebook/ads/redexgen/X/ON;
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v4    # "i":I
    :cond_2
    monitor-exit v6

    .line 55516
    return-void

    .line 55517
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A07(Landroid/content/Intent;)Z
    .locals 22

    .line 55518
    move-object/from16 v8, p0

    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/OO;->A04:Ljava/util/HashMap;

    monitor-enter v7

    .line 55519
    :try_start_0
    move-object/from16 v9, p1

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 55520
    .local v5, "action":Ljava/lang/String;
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/OO;->A00:Landroid/content/Context;

    .line 55521
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55522
    invoke-virtual {v9, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 55523
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 55524
    .local v8, "data":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 55525
    .local v11, "scheme":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v20

    .line 55526
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 55527
    .local v14, "debug":Z
    :goto_0
    if-eqz v14, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x80

    const/16 v1, 0xf

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x3e

    const/16 v1, 0x8

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x33

    const/16 v1, 0xb

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55528
    :cond_1
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/OO;->A03:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 55529
    .local v15, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v4, :cond_c

    .line 55530
    if-eqz v14, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x46

    const/16 v1, 0xd

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55531
    :cond_2
    const/4 v3, 0x0

    .line 55532
    .local v4, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v2, 0x0

    .end local v4    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v7, "i":I
    .local v10, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 55533
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ON;

    .line 55534
    .local v6, "receiver":Lcom/facebook/ads/redexgen/X/ON;
    if-eqz v14, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x68

    const/16 v10, 0x18

    const/16 v0, 0x6a

    invoke-static {v12, v10, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ON;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55535
    :cond_3
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/ON;->A00:Z

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 55536
    :cond_4
    iget-object v15, v1, Lcom/facebook/ads/redexgen/X/ON;->A03:Landroid/content/IntentFilter;

    const/16 v11, 0x53

    const/16 v10, 0x15

    const/16 v0, 0x27

    invoke-static {v11, v10, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v21

    .end local v6    # "receiver":Lcom/facebook/ads/redexgen/X/ON;
    .local v13, "receiver":Lcom/facebook/ads/redexgen/X/ON;
    move-object/from16 v17, v6

    .end local v7    # "i":I
    .local v16, "i":I
    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v17, "type":Ljava/lang/String;
    move-object/from16 v18, v5

    invoke-virtual/range {v15 .. v21}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v13

    .line 55537
    .local v4, "match":I
    if-ltz v13, :cond_7

    .line 55538
    if-eqz v14, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x18

    const/16 v10, 0x1b

    const/16 v0, 0x40

    invoke-static {v12, v10, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 55539
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55540
    :cond_5
    if-nez v3, :cond_6

    .line 55541
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55542
    .end local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55543
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/ON;->A00:Z

    goto :goto_3

    .line 55544
    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_7
    if-eqz v14, :cond_8

    .line 55545
    packed-switch v13, :pswitch_data_0

    .line 55546
    const/16 v10, 0xa5

    const/16 v1, 0xe

    const/16 v0, 0x11

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 55547
    :pswitch_0
    const/16 v10, 0xa1

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 55548
    .end local v6
    :pswitch_1
    const/16 v10, 0x9d

    const/4 v1, 0x4

    const/16 v0, 0x57

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 55549
    .end local v6
    :pswitch_2
    const/16 v10, 0x8f

    const/4 v1, 0x6

    const/16 v0, 0x66

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 55550
    .end local v6
    :pswitch_3
    const/16 v10, 0x95

    const/16 v1, 0x8

    const/16 v0, 0x12

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 55551
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/16 v10, 0x18

    const/16 v0, 0x14

    invoke-static {v12, v10, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55552
    .end local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v7
    .restart local v16    # "i":I
    .restart local v17    # "type":Ljava/lang/String;
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .end local v16    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_1

    .line 55553
    .end local v17    # "type":Ljava/lang/String;
    .restart local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v7    # "i":I
    .end local v10
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v17    # "type":Ljava/lang/String;
    :cond_9
    if-eqz v3, :cond_c

    .line 55554
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 55555
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ON;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/ON;->A00:Z

    .line 55556
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 55557
    .end local v4    # "i":I
    :cond_a
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/OO;->A02:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/OM;

    invoke-direct {v0, v9, v3}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55558
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/OO;->A01:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 55559
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/OO;->A01:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 55560
    :cond_b
    monitor-exit v7

    const/4 v0, 0x1

    return v0

    .line 55561
    .end local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v5    # "action":Ljava/lang/String;
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "scheme":Ljava/lang/String;
    .end local v14    # "debug":Z
    .end local v15    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_c
    monitor-exit v7

    .line 55562
    const/4 v0, 0x0

    return v0

    .line 55563
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
