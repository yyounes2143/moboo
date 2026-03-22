.class public final Lcom/facebook/ads/redexgen/X/UN;
.super Landroid/os/Handler;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$MessageHandler;

.field public final A02:Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$PackageVerifier;

.field public final A03:Lcom/facebook/ads/redexgen/X/VM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1876
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4udqyVbWZXJvSc0AlbflTWwfFOYrDaDf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2YLZ8zu95yTf3T209"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2VJPb0Yp69Qd6undQokFBSWI7sS3NGkE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Nq0QHebF7aCImjCS8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WfWu3jj6ZslW8HMUv7JinXygwhejXyBb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "C4PEiJW5iwJTin2vYgbWRkUl1o"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sWvNSKALPWxj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lJrPEKSWvzui7DJNo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UN;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UN;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/UN;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/UN;->A06:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$MessageHandler;Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$PackageVerifier;)V
    .locals 1

    .line 67532
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67533
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UN;->A00:Landroid/content/Context;

    .line 67534
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/UN;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$PackageVerifier;

    .line 67535
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UN;->A03:Lcom/facebook/ads/redexgen/X/VM;

    .line 67536
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UN;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$MessageHandler;

    .line 67537
    return-void
.end method

.method public static A00()Landroid/os/Bundle;
    .locals 5

    .line 67538
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 67539
    .local v0, "extraData":Landroid/os/Bundle;
    const/16 v2, 0x48

    const/16 v1, 0x17

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UN;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UN;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67540
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x36

    const/16 v1, 0x12

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UN;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67541
    return-object v4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/gv;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gz;
    .locals 3

    .line 67542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UN;->A03:Lcom/facebook/ads/redexgen/X/VM;

    new-instance v2, Lcom/facebook/ads/redexgen/X/gz;

    invoke-direct {v2, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/gz;-><init>(Lcom/facebook/ads/redexgen/X/gv;Lcom/facebook/ads/redexgen/X/Ns;Ljava/lang/String;)V

    .line 67543
    .local v0, "internalRewardedVideoAd":Lcom/facebook/ads/redexgen/X/gz;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gv;->A0B()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gv;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A0G(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 67544
    return-object v2
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/gm;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gw;
    .locals 4

    .line 67545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UN;->A03:Lcom/facebook/ads/redexgen/X/VM;

    new-instance v3, Lcom/facebook/ads/redexgen/X/gw;

    invoke-direct {v3, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/gw;-><init>(Lcom/facebook/ads/redexgen/X/gm;Lcom/facebook/ads/redexgen/X/Ns;Ljava/lang/String;)V

    .line 67546
    .local v0, "internalRewardedVideoAd":Lcom/facebook/ads/redexgen/X/gw;
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/gm;->A05:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/gm;->A02:Lcom/facebook/ads/AdExperienceType;

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/gm;->A08:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A0J(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 67547
    return-object v3
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UN;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x66

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 4

    const/16 v0, 0x5f

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/UN;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/UN;->A05:[Ljava/lang/String;

    const-string v1, "AJ3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/UN;->A04:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x8t
        -0x10t
        -0xct
        -0xet
        -0x10t
        -0xet
        -0x42t
        -0x35t
        -0x35t
        -0x38t
        -0x25t
        -0x3bt
        -0x31t
        -0x25t
        -0x3et
        -0x2ft
        -0x36t
        -0x36t
        -0x3ft
        -0x38t
        -0x25t
        -0x38t
        -0x35t
        -0x3dt
        -0x3dt
        -0x3ft
        -0x40t
        -0xdt
        -0xct
        -0xet
        -0x1t
        -0x1ft
        -0x1ct
        -0x1t
        -0x17t
        -0x1ct
        -0x1t
        -0x15t
        -0x1bt
        -0x7t
        0x11t
        0x12t
        0x10t
        0x1dt
        0x0t
        0x13t
        0xct
        0x2t
        0xat
        0x3t
        0x1dt
        0x9t
        0x3t
        0x17t
        -0x30t
        -0x2ft
        -0x31t
        -0x24t
        -0x30t
        -0x3et
        -0x31t
        -0x2dt
        -0x3at
        -0x40t
        -0x3et
        -0x24t
        -0x3et
        -0x2bt
        -0x2ft
        -0x31t
        -0x42t
        -0x30t
        0x15t
        0x16t
        0x14t
        0x21t
        0x15t
        0x7t
        0x14t
        0x18t
        0xbt
        0x5t
        0x7t
        0x21t
        0x15t
        0x6t
        0xdt
        0x21t
        0x18t
        0x7t
        0x14t
        0x15t
        0xbt
        0x11t
        0x10t
    .end array-data
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 67548
    .local v0, "this":Lcom/facebook/ads/redexgen/X/UN;
    .local p1, "msg":Landroid/os/Message;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/UN;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$MessageHandler;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/UN;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$MessageHandler;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$MessageHandler;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67549
    return-void

    .line 67550
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/UN;
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 67551
    .local v1, "replyTo":Landroid/os/Messenger;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-ne v1, v0, :cond_3

    .line 67552
    if-eqz v3, :cond_2

    .line 67553
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v2

    .line 67554
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UN;->A00()Landroid/os/Bundle;

    move-result-object v1

    .line 67555
    const/4 v0, 0x2

    invoke-virtual {v2, v0, v7, v1, v3}, Lcom/facebook/ads/redexgen/X/VM;->A07(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V

    .line 67556
    :cond_2
    return-void

    .line 67557
    .restart local v0    # "this":Lcom/facebook/ads/redexgen/X/UN;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const/16 v2, 0x1b

    const/16 v1, 0xd

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UN;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67558
    .local v2, "adId":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 67559
    return-void

    .line 67560
    :cond_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/UN;->A00:Landroid/content/Context;

    .line 67561
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/RB;->A05(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    .line 67562
    .local v3, "adContext":Lcom/facebook/ads/redexgen/X/dL;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v9

    .line 67563
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const/4 v6, 0x6

    const/16 v1, 0x15

    const/16 v0, 0x16

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/UN;->A03(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67564
    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/LH;->AIi(Z)V

    .line 67565
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/UN;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$PackageVerifier;

    if-eqz v0, :cond_5

    .line 67566
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/UN;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$PackageVerifier;

    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/UN;->A00:Landroid/content/Context;

    .line 67567
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const/16 v6, 0x28

    const/16 v1, 0xe

    const/16 v0, 0x58

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/UN;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67568
    invoke-interface {v10, v9, p1, v0}, Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$PackageVerifier;->verifyPackage(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 67569
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/UN;
    :cond_5
    move-object v6, v7

    .line 67570
    .local v5, "callingAppPackage":Ljava/lang/String;
    :goto_0
    if-nez v6, :cond_7

    .line 67571
    if-eqz v3, :cond_6

    .line 67572
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v1

    .line 67573
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v5, v7, v3}, Lcom/facebook/ads/redexgen/X/VM;->A07(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V

    .line 67574
    :cond_6
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHB()V

    .line 67575
    return-void

    .line 67576
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 67577
    :sswitch_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/VM;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    .line 67578
    .local v4, "ad":Lcom/facebook/ads/redexgen/X/Nc;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/gw;

    if-eqz v0, :cond_10

    .line 67579
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A01(Landroid/os/Bundle;)Lcom/facebook/ads/RewardData;

    move-result-object v0

    .line 67580
    .local v6, "rewardData":Lcom/facebook/ads/RewardData;
    check-cast v1, Lcom/facebook/ads/redexgen/X/gw;

    .line 67581
    .local v7, "internalRVAd":Lcom/facebook/ads/redexgen/X/gw;
    if-eqz v0, :cond_10

    .line 67582
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A0I(Lcom/facebook/ads/RewardData;)V

    goto/16 :goto_3

    .line 67583
    .end local v4    # "ad":Lcom/facebook/ads/redexgen/X/Nc;
    .end local v6    # "rewardData":Lcom/facebook/ads/RewardData;
    .end local v7    # "internalRVAd":Lcom/facebook/ads/redexgen/X/gw;
    :sswitch_1
    if-nez v3, :cond_8

    .line 67584
    return-void

    .line 67585
    .restart local v0    # "this":Lcom/facebook/ads/redexgen/X/UN;
    :cond_8
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/VM;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v1

    .line 67586
    .local v4, "adRecord":Lcom/facebook/ads/redexgen/X/UK;
    if-nez v1, :cond_9

    .line 67587
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    invoke-virtual {v0, v5, v3, v6}, Lcom/facebook/ads/redexgen/X/VM;->A05(Ljava/lang/String;Landroid/os/Messenger;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v1

    .line 67588
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/UN;
    :cond_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 67589
    invoke-static {v2, v0, v6}, Lcom/facebook/ads/redexgen/X/Nt;->A05(Lcom/facebook/ads/redexgen/X/dL;Landroid/os/Bundle;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v7

    .line 67590
    .local v6, "rewardedVideoAdModel":Lcom/facebook/ads/redexgen/X/gm;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/Nc;

    if-nez v0, :cond_b

    .line 67591
    invoke-direct {v4, v7, v5}, Lcom/facebook/ads/redexgen/X/UN;->A02(Lcom/facebook/ads/redexgen/X/gm;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gw;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/Nc;

    .line 67592
    :cond_a
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v2

    .line 67593
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UN;->A00()Landroid/os/Bundle;

    move-result-object v1

    .line 67594
    const/16 v0, 0x7d1

    invoke-virtual {v2, v0, v5, v1, v3}, Lcom/facebook/ads/redexgen/X/VM;->A07(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V

    goto :goto_3

    .line 67595
    :cond_b
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/Nc;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/gw;

    if-eqz v0, :cond_a

    .line 67596
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/Nc;

    check-cast v6, Lcom/facebook/ads/redexgen/X/gw;

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/gm;->A05:Ljava/lang/String;

    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/gm;->A02:Lcom/facebook/ads/AdExperienceType;

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/gm;->A08:Z

    .line 67597
    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A0J(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    goto :goto_1

    .line 67598
    .end local v4    # "adRecord":Lcom/facebook/ads/redexgen/X/UK;
    .end local v6    # "rewardedVideoAdModel":Lcom/facebook/ads/redexgen/X/gm;
    :sswitch_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/VM;->A08(Ljava/lang/String;)V

    goto :goto_3

    .line 67599
    :sswitch_3
    if-nez v3, :cond_c

    .line 67600
    return-void

    .line 67601
    .restart local v0    # "this":Lcom/facebook/ads/redexgen/X/UN;
    :cond_c
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/VM;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v1

    .line 67602
    .restart local v4    # "adRecord":Lcom/facebook/ads/redexgen/X/UK;
    if-nez v1, :cond_d

    .line 67603
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    invoke-virtual {v0, v5, v3, v6}, Lcom/facebook/ads/redexgen/X/VM;->A05(Ljava/lang/String;Landroid/os/Messenger;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v1

    .line 67604
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/UN;
    :cond_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 67605
    invoke-static {v2, v0, v6}, Lcom/facebook/ads/redexgen/X/Nt;->A04(Lcom/facebook/ads/redexgen/X/dL;Landroid/os/Bundle;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v6

    .line 67606
    .local v6, "intAdModel":Lcom/facebook/ads/redexgen/X/gv;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/Nc;

    if-nez v0, :cond_f

    .line 67607
    invoke-direct {v4, v6, v5}, Lcom/facebook/ads/redexgen/X/UN;->A01(Lcom/facebook/ads/redexgen/X/gv;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gz;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/Nc;

    .line 67608
    :cond_e
    :goto_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A00()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v2

    .line 67609
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UN;->A00()Landroid/os/Bundle;

    move-result-object v1

    .line 67610
    const/16 v0, 0x3f3

    invoke-virtual {v2, v0, v5, v1, v3}, Lcom/facebook/ads/redexgen/X/VM;->A07(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V

    goto :goto_3

    .line 67611
    :cond_f
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/Nc;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/gz;

    if-eqz v0, :cond_e

    .line 67612
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/Nc;

    check-cast v2, Lcom/facebook/ads/redexgen/X/gz;

    .line 67613
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/gv;->A0B()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/gv;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A0G(Ljava/util/EnumSet;Ljava/lang/String;)V

    goto :goto_2

    .line 67614
    .end local v4    # "adRecord":Lcom/facebook/ads/redexgen/X/UK;
    .end local v6    # "intAdModel":Lcom/facebook/ads/redexgen/X/gv;
    :cond_10
    :goto_3
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "replyTo":Landroid/os/Messenger;
    .end local v2    # "adId":Ljava/lang/String;
    .end local v3    # "adContext":Lcom/facebook/ads/redexgen/X/dL;
    .end local v5    # "callingAppPackage":Ljava/lang/String;
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/UN;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/UN;->A05:[Ljava/lang/String;

    const-string v1, "nIV8RMn07Ah5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "ZacTvu5dUvRq7FGBf"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_3
        0x3f4 -> :sswitch_2
        0x7d0 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_0
    .end sparse-switch
.end method
