.class public final Lcom/facebook/ads/redexgen/X/TK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/TJ;
    }
.end annotation


# static fields
.field public static A00:Z

.field public static A01:Z

.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A05:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A06:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1824
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "i0FOsf0o9fpBvAlaEaGgnCYFRbNnwBKJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZsBa2nEfyhltTo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZG6g5nWnUhxh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6zjosiDwJWE47kuMvKAUCDrCWUeR8P3q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Gh89HIHHDqfPtiuASbXLVil627eRz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Lsbp3nhJR34oAmuvtJAouWbaxC4Ny9OM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "s0Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "C"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TK;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TK;->A03()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/TK;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1825
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/TK;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1826
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/TK;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/YU;
    .locals 1

    .line 65711
    new-instance v0, Lcom/facebook/ads/redexgen/X/YU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YU;-><init>()V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/YP;
    .locals 1

    .line 65712
    new-instance v0, Lcom/facebook/ads/redexgen/X/YP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YP;-><init>(Lcom/facebook/ads/redexgen/X/cu;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TK;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xfa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TK;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x56t
        -0x5dt
        -0x5ct
        -0x27t
        -0x55t
        -0x2bt
        -0x5ct
        -0x55t
        -0x36t
        -0x3at
        -0x3bt
        -0x7t
        -0x18t
        -0x13t
        -0x17t
        -0xet
        -0x19t
        -0x17t
        -0x2et
        -0x17t
        -0x8t
        -0x5t
        -0xdt
        -0xat
        -0x11t
        -0x58t
        -0x67t
        -0x60t
        0x75t
        -0x42t
        -0x3dt
        -0x42t
        -0x37t
        -0x42t
        -0x4at
        -0x3ft
        -0x42t
        -0x31t
        -0x4at
        -0x37t
        -0x42t
        -0x3ct
        -0x3dt
        0x75t
        -0x38t
        -0x37t
        -0x4at
        -0x39t
        -0x37t
        -0x46t
        -0x47t
        -0x54t
        -0x43t
        -0x3ct
        0x79t
        -0x30t
        -0x46t
        -0x34t
        0x79t
        -0x46t
        -0x3bt
        -0x35t
        -0x42t
        -0x46t
        -0x43t
        -0x2et
        0x79t
        -0x3et
        -0x39t
        -0x3et
        -0x33t
        -0x3et
        -0x46t
        -0x3bt
        -0x3et
        -0x2dt
        -0x42t
        -0x43t
        0x7at
        0x79t
        -0x54t
        -0x3ct
        -0x3et
        -0x37t
        -0x37t
        -0x3et
        -0x39t
        -0x40t
        -0x79t
        -0x5at
        -0x44t
        -0x3et
        0x6dt
        -0x4ft
        -0x44t
        -0x45t
        0x74t
        -0x3ft
        0x6dt
        -0x50t
        -0x52t
        -0x47t
        -0x47t
        0x6dt
        -0x72t
        -0x3et
        -0x4ft
        -0x4at
        -0x4et
        -0x45t
        -0x50t
        -0x4et
        -0x65t
        -0x4et
        -0x3ft
        -0x3ct
        -0x44t
        -0x41t
        -0x48t
        -0x72t
        -0x4ft
        -0x40t
        0x7bt
        -0x4at
        -0x45t
        -0x4at
        -0x3ft
        -0x4at
        -0x52t
        -0x47t
        -0x4at
        -0x39t
        -0x4et
        0x75t
        0x76t
        0x7bt
        0x6dt
        -0x60t
        -0x44t
        -0x46t
        -0x4et
        0x6dt
        -0x4dt
        -0x3et
        -0x45t
        -0x50t
        -0x3ft
        -0x4at
        -0x44t
        -0x45t
        -0x52t
        -0x47t
        -0x4at
        -0x3ft
        -0x3at
        0x6dt
        -0x46t
        -0x52t
        -0x3at
        0x6dt
        -0x45t
        -0x44t
        -0x3ft
        0x6dt
        -0x3ct
        -0x44t
        -0x41t
        -0x48t
        0x6dt
        -0x43t
        -0x41t
        -0x44t
        -0x43t
        -0x4et
        -0x41t
        -0x47t
        -0x3at
        0x7bt
        -0x78t
        -0x69t
        -0x70t
        -0x3at
        -0x34t
        -0x3ft
        -0x2dt
        -0x38t
        0x0t
        0x6t
        -0x5t
        0xdt
        0x2t
        -0x7t
        -0x3t
        0x9t
        0x8t
        0x0t
        0x3t
        0x1t
        -0x2at
        -0x2ct
        -0x23t
        -0x2ct
        -0x1ft
        -0x28t
        -0x2et
        -0x3t
        0x2t
        -0x3t
        0x8t
        -0x3t
        -0xbt
        0x0t
        -0x3t
        0xet
        -0x7t
        -0x33t
        -0x2et
        -0x33t
        -0x28t
        -0x33t
        -0x3bt
        -0x30t
        -0x33t
        -0x22t
        -0x37t
        -0x74t
        -0x73t
        -0x7ct
        -0x2et
        -0x2dt
        -0x28t
        -0x7ct
        -0x39t
        -0x3bt
        -0x30t
        -0x30t
        -0x37t
        -0x38t
        -0x6et
        0x1t
        -0xat
        0x8t
        0x9t
        -0xct
        0x7t
        -0x6t
        0x8t
        0xat
        0x1t
        0x9t
    .end array-data
.end method

.method public static A04(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 2

    .line 65713
    sget-object v1, Lcom/facebook/ads/redexgen/X/XJ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/YV;-><init>(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XJ;->execute(Ljava/lang/Runnable;)V

    .line 65714
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 0

    .line 65715
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/TK;->A04(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 5

    .line 65716
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U9;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/TK;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65717
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65718
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 65719
    .local v0, "defaultUncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/facebook/ads/redexgen/X/YL;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/YL;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sl;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/Sl;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Sk;)V

    .line 65720
    .local v1, "reportHandler":Lcom/facebook/ads/redexgen/X/Sl;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65721
    :catch_0
    move-exception v0

    .line 65722
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A1X:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 65723
    const/16 v2, 0xc6

    const/4 v1, 0x7

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 65724
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 2

    .line 65725
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A0H(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 65726
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 2

    .line 65727
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A0H(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 65728
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 1

    .line 65729
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A2H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65730
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/TK;->A0F(Lcom/facebook/ads/redexgen/X/cu;I)V

    .line 65731
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A2Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65732
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TK;->A0B(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 65733
    :cond_1
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 5

    .line 65734
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A2I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65735
    const/4 v4, 0x0

    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TK;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TK;->A03:[Ljava/lang/String;

    const-string v1, "XjvPwbQrSqkAxC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "skO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/TK;->A0G(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 65736
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 2

    .line 65737
    sget-object v1, Lcom/facebook/ads/redexgen/X/XU;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yg;-><init>(Lcom/facebook/ads/redexgen/X/cu;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65738
    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 3

    .line 65739
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nl;->A02(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 65740
    new-instance v2, Lcom/facebook/ads/redexgen/X/YK;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/YK;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/aO;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/aO;-><init>()V

    .line 65741
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 65742
    invoke-static {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sp;->A0C(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/So;Lcom/facebook/ads/redexgen/X/Sn;Z)V

    .line 65743
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    .line 65744
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TK;->A0D(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 65745
    return-void
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 6

    .line 65746
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65747
    return-void

    .line 65748
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/internal/dynamicloading/FlashPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 65749
    .local v0, "flashPreferences":Landroid/content/SharedPreferences;
    const/16 v2, 0xba

    const/16 v1, 0xc

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65750
    .local v1, "flashConfig":Ljava/lang/String;
    const/16 v2, 0xef

    const/16 v1, 0xb

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65751
    .local v2, "flashResult":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 65752
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 65753
    const/16 v2, 0xb5

    const/4 v1, 0x5

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe75

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Su;->ABR(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 65754
    :cond_1
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 0

    .line 65755
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TK;->A0C(Lcom/facebook/ads/redexgen/X/cu;)V

    return-void
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/cu;I)V
    .locals 6

    .line 65756
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/SP;->A01(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 65757
    sget-object v1, Lcom/facebook/ads/redexgen/X/TK;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65758
    return-void

    .line 65759
    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebuggerOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65760
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VF;->A02()V

    .line 65761
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TK;->A06(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 65762
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A0q(Landroid/content/Context;)Z

    move-result v3

    .line 65763
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v2

    .line 65764
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TK;->A00()Lcom/facebook/ads/redexgen/X/YU;

    move-result-object v1

    .line 65765
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TK;->A01(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/YP;

    move-result-object v0

    .line 65766
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vw;->A00(ZZLcom/facebook/ads/redexgen/X/Vj;Lcom/facebook/ads/redexgen/X/Vz;)V

    .line 65767
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A04(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    .line 65768
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/S0;->A03(J)V

    .line 65769
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65770
    new-instance v0, Lcom/facebook/ads/redexgen/X/YN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YN;-><init>(Lcom/facebook/ads/redexgen/X/cu;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ev;->A09(Lcom/facebook/ads/redexgen/X/eb;)V

    .line 65771
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 65772
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/16 v1, 0x59

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65773
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0R:I

    const/16 v2, 0xd7

    const/16 v1, 0x18

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 65774
    const/16 v2, 0xb2

    const/4 v1, 0x3

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->ABR(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 65775
    :cond_4
    const-class v0, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04(Lcom/facebook/ads/redexgen/X/cu;Ljava/lang/Class;)V

    .line 65776
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XU;->A05(Landroid/content/Context;)V

    .line 65777
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ud;->A05(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 65778
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/MW;->A01(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/MW;

    .line 65779
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65780
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Qt;->A00(Landroid/content/Context;)V

    .line 65781
    :cond_5
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65782
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wt;->A02()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Wt;->A8s(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Ue;

    .line 65783
    :cond_6
    return-void
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 5

    .line 65784
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/SP;->A01(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 65785
    const/4 v2, 0x0

    .line 65786
    .local v0, "execute":Z
    const-class v1, Lcom/facebook/ads/redexgen/X/TK;

    monitor-enter v1

    .line 65787
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/TK;->A00:Z

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 65788
    if-eq p2, v4, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 65789
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 65790
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/TK;->A01:Z

    if-nez v0, :cond_2

    .line 65791
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/TK;->A01:Z

    .line 65792
    const/4 v2, 0x1

    goto :goto_1

    .line 65793
    :cond_1
    :goto_0
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/TK;->A00:Z

    .line 65794
    const/4 v2, 0x1

    .line 65795
    :cond_2
    :goto_1
    monitor-exit v1

    .line 65796
    if-eqz v2, :cond_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65797
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/TK;->A0F(Lcom/facebook/ads/redexgen/X/cu;I)V

    .line 65798
    sget-object v1, Lcom/facebook/ads/redexgen/X/XU;->A08:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZW;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ZW;-><init>(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65799
    .end local v1
    :cond_3
    :goto_2
    return-void

    .line 65800
    :cond_4
    if-ne p2, v4, :cond_3

    .line 65801
    const/16 v2, 0x33

    const/16 v1, 0x26

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v3

    .line 65802
    .local v1, "alreadyInitializedMessage":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 65803
    new-instance v0, Lcom/facebook/ads/redexgen/X/TJ;

    invoke-direct {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/TJ;-><init>(ZLjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A04(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    goto :goto_2

    .line 65804
    :cond_5
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 65805
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 5

    const/16 v2, 0x19

    const/16 v1, 0x1a

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xcd

    const/16 v1, 0xa

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TK;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65806
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ev;->A06()V

    .line 65807
    invoke-static {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/TK;->A0G(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 65808
    return-void
.end method

.method public static declared-synchronized A0I()Z
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/TK;

    monitor-enter v1

    .line 65809
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/TK;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
