.class public abstract Lcom/facebook/ads/redexgen/X/hQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/VT;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Landroid/os/Handler;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/MU;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/VU;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/MP;

.field public A01:Lcom/facebook/ads/redexgen/X/MP;

.field public A02:Ljava/lang/String;

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/TE;

.field public A05:Lcom/facebook/ads/redexgen/X/VR;

.field public A06:Lcom/facebook/ads/redexgen/X/VU;

.field public A07:Lcom/facebook/ads/redexgen/X/MQ;

.field public final A08:Lcom/facebook/ads/redexgen/X/NT;

.field public final A09:Lcom/facebook/ads/redexgen/X/US;

.field public final A0A:Lcom/facebook/ads/redexgen/X/MU;

.field public final A0B:Lcom/facebook/ads/redexgen/X/dL;

.field public volatile A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2804
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mx9sJqsz4sgJcdPgoYbgRIW9VnwzqRx6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rFbyGWP2Ub8PQhtH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vlmOFoI5eqS6Nw0ENJhYNh6o4BRmenqE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JTMxf3amnDxIP84vbXSIdB2jgXN5bQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LkG9NIMCA2H26FKF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xLNm9V1ZNmyFYJ5qhdZubuzSePd6Iimu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7SoM7bEoo8CKfR8pxc6QG8O9JCd0xBEh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/hQ;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XR;->A02()V

    .line 2805
    const-class v0, Lcom/facebook/ads/redexgen/X/hQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hQ;->A0I:Ljava/lang/String;

    .line 2806
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/hQ;->A0F:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NT;)V
    .locals 2

    .line 84792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84793
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A03:J

    .line 84794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A02:Ljava/lang/String;

    .line 84795
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84796
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    .line 84797
    sget-object v0, Lcom/facebook/ads/redexgen/X/hQ;->A0H:Lcom/facebook/ads/redexgen/X/VU;

    if-eqz v0, :cond_1

    .line 84798
    sget-object v0, Lcom/facebook/ads/redexgen/X/hQ;->A0H:Lcom/facebook/ads/redexgen/X/VU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A06:Lcom/facebook/ads/redexgen/X/VU;

    .line 84799
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A06:Lcom/facebook/ads/redexgen/X/VU;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/VU;->A0R(Lcom/facebook/ads/redexgen/X/VT;)V

    .line 84800
    sget-object v0, Lcom/facebook/ads/redexgen/X/hQ;->A0G:Lcom/facebook/ads/redexgen/X/MU;

    if-eqz v0, :cond_0

    .line 84801
    sget-object v0, Lcom/facebook/ads/redexgen/X/hQ;->A0G:Lcom/facebook/ads/redexgen/X/MU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0A:Lcom/facebook/ads/redexgen/X/MU;

    .line 84802
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 84803
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A09:Lcom/facebook/ads/redexgen/X/US;

    .line 84804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5W()V

    .line 84805
    return-void

    .line 84806
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/MU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/MU;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0A:Lcom/facebook/ads/redexgen/X/MU;

    goto :goto_1

    .line 84807
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VU;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A06:Lcom/facebook/ads/redexgen/X/VU;

    goto :goto_0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/hQ;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x166

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hQ;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x3at
        -0x17t
        -0x1at
        -0xbt
        -0x7t
        -0x16t
        -0x9t
        -0x5bt
        -0x17t
        -0xct
        -0x16t
        -0x8t
        -0x5bt
        -0xdt
        -0xct
        -0x7t
        -0x5bt
        -0x16t
        -0x3t
        -0x12t
        -0x8t
        -0x7t
        -0xet
        0x15t
        0x12t
        0x21t
        0x25t
        0x16t
        0x23t
        -0x2ft
        0x1at
        0x24t
        -0x2ft
        0x1ft
        0x26t
        0x1dt
        0x1dt
        -0x2ft
        -0x27t
        0x14t
        0x19t
        0x12t
        0x1at
        0x1ft
        -0x2ft
        0x1ft
        0x20t
        0x25t
        -0x2ft
        0x1dt
        0x20t
        0x12t
        0x15t
        0x16t
        0x15t
        -0x26t
        -0x38t
        -0x15t
        -0x18t
        -0x9t
        -0x5t
        -0x14t
        -0x7t
        -0x59t
        -0x10t
        -0x6t
        -0x59t
        -0xbt
        -0x4t
        -0xdt
        -0xdt
        -0x59t
        -0x51t
        -0x16t
        -0x11t
        -0x18t
        -0x10t
        -0xbt
        -0x14t
        -0x15t
        -0x50t
        -0x5bt
        -0x38t
        -0x3bt
        -0x2ct
        -0x28t
        -0x37t
        -0x2at
        -0x7ct
        -0x33t
        -0x29t
        -0x7ct
        -0x2et
        -0x27t
        -0x30t
        -0x30t
        -0x7ct
        -0x74t
        -0x2et
        -0x2dt
        -0x7ct
        -0x39t
        -0x34t
        -0x3bt
        -0x33t
        -0x2et
        -0x73t
        0x6t
        0x29t
        0x26t
        0x35t
        0x39t
        0x2at
        0x37t
        -0x1bt
        0x2et
        0x38t
        -0x1bt
        0x33t
        0x3at
        0x31t
        0x31t
        -0x1bt
        0x34t
        0x33t
        -0x1bt
        0x38t
        0x39t
        0x26t
        0x37t
        0x39t
        0x6t
        0x29t
        -0x15t
        0xct
        -0x43t
        0xat
        0xct
        0xft
        0x2t
        -0x43t
        -0x2t
        0x1t
        -0x43t
        0x0t
        -0x2t
        0xbt
        0x1t
        0x6t
        0x1t
        -0x2t
        0x11t
        0x2t
        0x10t
        -0x35t
        -0x32t
        -0x17t
        -0x1at
        -0x1bt
        -0x22t
        -0x69t
        -0x28t
        -0x25t
        -0x28t
        -0x19t
        -0x15t
        -0x24t
        -0x17t
        -0x69t
        -0x15t
        -0x10t
        -0x19t
        -0x24t
        -0x5bt
        0x3ft
        0x42t
        -0x2t
        0x3ft
        0x4at
        0x50t
        0x43t
        0x3ft
        0x42t
        0x57t
        -0x2t
        0x51t
        0x52t
        0x3ft
        0x50t
        0x52t
        0x43t
        0x42t
        0x2ft
        0x32t
        0x41t
        -0x33t
        -0x24t
        -0x2bt
        0x3et
        0x43t
        0x3ct
        0x44t
        0x49t
        0x3at
        0x4bt
        0x3ct
        0x4dt
        0x3ct
        0x48t
        0x4et
        -0x32t
        -0x21t
        -0x1dt
        -0x20t
        -0xdt
        -0x20t
        -0x32t
        -0x1ft
        -0x17t
        -0x1ct
        -0x1et
        -0xdt
        -0x61t
        -0x18t
        -0xet
        -0x61t
        -0x13t
        -0xct
        -0x15t
        -0x15t
        0x13t
        0x1ct
        0x11t
        0x20t
        0x27t
        0x1et
        0x22t
        0x13t
        0x12t
        0xdt
        0x17t
        0x12t
        0x3ct
        0x45t
        0x4dt
        0x40t
        0x49t
        0x46t
        0x45t
        0x44t
        0x3ct
        0x45t
        0x4bt
        -0x9t
        0x40t
        0x4at
        -0x9t
        0x3ct
        0x44t
        0x47t
        0x4bt
        0x50t
        0x33t
        0x39t
        0x2et
        0x40t
        0x35t
        0x2ct
        0x30t
        0x3ct
        0x3bt
        0x33t
        0x36t
        0x34t
        0x15t
        0x21t
        0x14t
        0x20t
        0x24t
        0x14t
        0x1dt
        0x12t
        0x28t
        0xet
        0x12t
        0x10t
        0x1ft
        0x1ft
        0x18t
        0x1dt
        0x16t
        -0x3t
        0x2t
        0xat
        -0xbt
        0x0t
        -0x3t
        -0x8t
        -0x4ct
        0x4t
        0x0t
        -0xbt
        -0x9t
        -0x7t
        0x1t
        -0x7t
        0x2t
        0x8t
        -0x4ct
        -0x3t
        0x2t
        -0x4ct
        0x6t
        -0x7t
        0x7t
        0x4t
        0x3t
        0x2t
        0x7t
        -0x7t
        0x24t
        0x27t
        0x19t
        0x1ct
        0x17t
        0x2ct
        0x21t
        0x25t
        0x1dt
        0x17t
        0x25t
        0x2bt
        0x11t
        0x4t
        0x10t
        0x14t
        0x4t
        0x12t
        0x13t
        -0x2t
        0x8t
        0x3t
        0xat
        0x5t
        -0x7t
        -0xat
        0x9t
        -0x6t
        -0xct
        0x9t
        -0x2t
        0x2t
        -0x6t
        0x8t
        0x9t
        -0xat
        0x2t
        0x5t
    .end array-data
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/TE;)V
    .locals 6

    .line 84808
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84809
    return-void

    .line 84810
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/FlashPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84811
    .local v0, "flashPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TE;->A0C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84812
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 84813
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TE;->A0C()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x106

    const/16 v1, 0xc

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 84814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x156

    const/16 v1, 0x10

    const/16 v0, 0x36

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84815
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84816
    :goto_0
    return-void

    .line 84817
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/TE;)V
    .locals 2

    .line 84818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TE;->A0H()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AIi(Z)V

    .line 84819
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/PW;)V
    .locals 16

    .line 84820
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/PW;->A00()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v2

    .line 84821
    .local v2, "placement":Lcom/facebook/ads/redexgen/X/TE;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v1

    if-nez v1, :cond_2

    .line 84822
    .end local v3
    .end local v5
    .end local v6
    :cond_0
    const/16 v3, 0x123

    const/16 v2, 0x1d

    const/16 v1, 0x35

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v4

    .line 84823
    .local v0, "errorMessage":Ljava/lang/String;
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    new-instance v3, Lcom/facebook/ads/redexgen/X/V1;

    invoke-direct {v3, v1, v4}, Lcom/facebook/ads/redexgen/X/V1;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 84824
    .local v3, "error":Lcom/facebook/ads/redexgen/X/V1;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-interface {v2, v1, v4}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 84825
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    if-eqz v1, :cond_1

    .line 84826
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84827
    :cond_1
    return-void

    .line 84828
    :cond_2
    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/hQ;->A04:Lcom/facebook/ads/redexgen/X/TE;

    .line 84829
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    .line 84830
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A04:Lcom/facebook/ads/redexgen/X/TE;

    .line 84831
    .local v3, "currentPlacement":Lcom/facebook/ads/redexgen/X/TE;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A0E()Lorg/json/JSONObject;

    move-result-object v6

    const/16 v5, 0xc3

    const/4 v4, 0x3

    const/16 v3, 0xd

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v9

    if-nez v6, :cond_5

    .line 84832
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A04()Lcom/facebook/ads/redexgen/X/TC;

    move-result-object v4

    .line 84833
    .local v0, "placementAd":Lcom/facebook/ads/redexgen/X/TC;
    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/hQ;->A0F(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 84834
    return-void

    .line 84835
    :cond_3
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    if-nez v3, :cond_4

    .line 84836
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84837
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/Sv;->A0a:I

    .line 84838
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/TC;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x51

    const/16 v2, 0x1a

    const/4 v1, 0x5

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84839
    invoke-interface {v6, v9, v5, v1}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 84840
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/hQ;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84841
    return-void

    .line 84842
    :cond_4
    new-instance v5, Lcom/facebook/ads/redexgen/X/NU;

    .line 84843
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/TC;->A04()Lorg/json/JSONObject;

    move-result-object v6

    .line 84844
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v7

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/NT;->A0A:Ljava/lang/String;

    .line 84845
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/TF;->A0C()J

    move-result-wide v9

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;Ljava/lang/String;J)V

    .line 84846
    .local v4, "loadConfig":Lcom/facebook/ads/redexgen/X/NU;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/hQ;->A0R(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;Lcom/facebook/ads/redexgen/X/NU;)V

    .line 84847
    .end local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/TC;
    .end local v4    # "loadConfig":Lcom/facebook/ads/redexgen/X/NU;
    goto/16 :goto_3

    .line 84848
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 84849
    .local v5, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/dto/AdCandidate;>;"
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A04()Lcom/facebook/ads/redexgen/X/TC;

    move-result-object v7

    .line 84850
    .restart local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/TC;
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 84851
    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/hQ;->A0F(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 84852
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84853
    :cond_7
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A04()Lcom/facebook/ads/redexgen/X/TC;

    move-result-object v7

    .line 84854
    .end local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/TC;
    .local v6, "placementAd":Lcom/facebook/ads/redexgen/X/TC;
    if-nez v7, :cond_6

    .line 84855
    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    const/4 v6, 0x0

    sget-object v5, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v4, v5, v3

    const/4 v3, 0x6

    aget-object v5, v5, v3

    const/16 v3, 0x1a

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v4, v3, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 84856
    :cond_8
    invoke-direct {v0, v7}, Lcom/facebook/ads/redexgen/X/hQ;->A0E(Lcom/facebook/ads/redexgen/X/TC;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 84857
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    sget-object v5, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const-string v4, "ioxWOihgwDfBac41kTr6w1CF9LpRHapv"

    const/4 v3, 0x2

    aput-object v4, v5, v3

    if-nez v10, :cond_a

    .line 84858
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84859
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v7

    sget v5, Lcom/facebook/ads/redexgen/X/Sv;->A0a:I

    .line 84860
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/TC;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TC;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x38

    const/16 v2, 0x19

    const/16 v1, 0x28

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84861
    invoke-interface {v7, v9, v5, v1}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 84862
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/hQ;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84863
    return-void

    .line 84864
    :cond_a
    const/4 v5, 0x0

    .line 84865
    .local v8, "loaded":Z
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x1

    if-le v4, v3, :cond_c

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    .line 84866
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/MP;->AJa()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 84867
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 84868
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 84869
    .local v15, "ads":Lorg/json/JSONArray;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/TC;

    .line 84870
    .local v10, "candidate":Lcom/facebook/ads/redexgen/X/TC;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/TC;->A04()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 84871
    :cond_b
    const/16 v5, 0xc0

    const/4 v4, 0x3

    const/16 v3, 0x6f

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84872
    const/16 v5, 0xc6

    const/16 v4, 0xc

    const/16 v3, 0x7c

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 84873
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A0E()Lorg/json/JSONObject;

    move-result-object v4

    .line 84874
    invoke-virtual {v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84875
    new-instance v10, Lcom/facebook/ads/redexgen/X/NU;

    .line 84876
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v12

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/NT;->A0A:Ljava/lang/String;

    .line 84877
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/TF;->A0C()J

    move-result-wide v14

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;Ljava/lang/String;J)V

    .line 84878
    .local v9, "loadConfig":Lcom/facebook/ads/redexgen/X/NU;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    invoke-virtual {v0, v3, v1, v7, v10}, Lcom/facebook/ads/redexgen/X/hQ;->A0R(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;Lcom/facebook/ads/redexgen/X/NU;)V

    .line 84879
    const/4 v5, 0x1

    goto :goto_2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84880
    .local v0, "ex":Ljava/lang/Exception;
    :catch_0
    const/4 v5, 0x0

    .line 84881
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_c
    :goto_2
    if-nez v5, :cond_10

    .line 84882
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 84883
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x67

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v6

    .line 84884
    .local v0, "error":Lcom/facebook/ads/redexgen/X/V1;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84885
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v5

    .line 84886
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v4

    const/16 v3, 0x85

    const/16 v2, 0x16

    const/16 v1, 0x3e

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 84887
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    if-eqz v1, :cond_d

    .line 84888
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84889
    :cond_d
    return-void

    .line 84890
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/V1;
    :cond_e
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    if-nez v3, :cond_f

    .line 84891
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84892
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v7

    sget v5, Lcom/facebook/ads/redexgen/X/Sv;->A0a:I

    .line 84893
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/TC;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TC;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x16

    const/16 v2, 0x22

    const/16 v1, 0x52

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84894
    invoke-interface {v7, v9, v5, v1}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 84895
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/hQ;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84896
    return-void

    .line 84897
    :cond_f
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/TC;

    .line 84898
    .end local v6    # "placementAd":Lcom/facebook/ads/redexgen/X/TC;
    .local v0, "placementAd":Lcom/facebook/ads/redexgen/X/TC;
    new-instance v5, Lcom/facebook/ads/redexgen/X/NU;

    .line 84899
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/TC;->A04()Lorg/json/JSONObject;

    move-result-object v6

    .line 84900
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v7

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/NT;->A0A:Ljava/lang/String;

    .line 84901
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/TF;->A0C()J

    move-result-wide v9

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;Ljava/lang/String;J)V

    .line 84902
    .restart local v4    # "loadConfig":Lcom/facebook/ads/redexgen/X/NU;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/hQ;->A0R(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;Lcom/facebook/ads/redexgen/X/NU;)V

    .line 84903
    .end local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/TC;
    .end local v4    # "loadConfig":Lcom/facebook/ads/redexgen/X/NU;
    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/dto/AdCandidate;>;"
    .end local v8    # "loaded":Z
    :cond_10
    :goto_3
    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/hQ;->A09(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 84904
    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/hQ;->A0A(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 84905
    return-void

    .line 84906
    :cond_11
    return-void
.end method

.method private final A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 4

    .line 84907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A5Z(Z)V

    .line 84908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A03:J

    .line 84909
    goto :goto_1

    .line 84910
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84911
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/NT;->A0A:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/NT;->A09:Lcom/facebook/ads/redexgen/X/V6;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VB;

    invoke-direct {v0, v3, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/VB;-><init>(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/V6;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/V2; {:try_start_0 .. :try_end_0} :catch_0

    .line 84912
    .local v0, "bidPayload":Lcom/facebook/ads/redexgen/X/VB;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84913
    invoke-virtual {v2, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/NT;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/VB;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/VR;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A05:Lcom/facebook/ads/redexgen/X/VR;

    .line 84914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A06:Lcom/facebook/ads/redexgen/X/VU;

    if-eqz v0, :cond_1

    .line 84915
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A06:Lcom/facebook/ads/redexgen/X/VU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A05:Lcom/facebook/ads/redexgen/X/VR;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A0Q(Lcom/facebook/ads/redexgen/X/VR;)V

    .line 84916
    :cond_1
    return-void

    .line 84917
    .end local v0    # "bidPayload":Lcom/facebook/ads/redexgen/X/VB;
    :catch_0
    move-exception v0

    .line 84918
    .local v0, "e":Lcom/facebook/ads/redexgen/X/V2;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V1;->A02(Lcom/facebook/ads/redexgen/X/V2;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hQ;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84919
    return-void
.end method

.method private A0D(Lorg/json/JSONObject;)V
    .locals 3

    .line 84920
    if-eqz p1, :cond_0

    .line 84921
    const/16 v2, 0xe6

    const/16 v1, 0xc

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A02:Ljava/lang/String;

    .line 84922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A01(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/MW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/MW;->A0O(Lorg/json/JSONObject;)V

    .line 84923
    :cond_0
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/TC;)Z
    .locals 1

    .line 84924
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TC;->A04()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;)Z
    .locals 8

    .line 84925
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    if-nez p2, :cond_1

    .line 84926
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v5

    .line 84927
    .local v0, "error":Lcom/facebook/ads/redexgen/X/V1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84928
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    .line 84929
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x85

    const/16 v1, 0x16

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 84930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    if-eqz v0, :cond_0

    .line 84931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84932
    :cond_0
    return v7

    .line 84933
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/V1;
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/TC;->A02()Ljava/lang/String;

    move-result-object v6

    .line 84934
    .local v2, "adapterName":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0A:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84935
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TF;->A0D()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/MP;

    move-result-object v2

    .line 84936
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/MP;
    if-nez v2, :cond_2

    .line 84937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84938
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0a:I

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0, v6}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84939
    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 84940
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hQ;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84941
    return v7

    .line 84942
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    .line 84943
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NT;->A01()Ljava/util/Set;

    move-result-object v1

    .line 84944
    .local v4, "expectedPlacementTypeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/internal/protocol/AdPlacementType;>;"
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/MP;->A8c()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 84945
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v4

    .line 84946
    .restart local v0    # "error":Lcom/facebook/ads/redexgen/X/V1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84947
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v5

    .line 84948
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x9b

    const/16 v1, 0x13

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 84949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    if-eqz v0, :cond_4

    .line 84950
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const-string v1, "XDVsCbJ3K5v8dlUMGtS0uKtjThdAM1fs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "AXbWkB0jI9efrJtSTWvCCcVR8Wd1ee9G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84951
    :cond_4
    return v7

    .line 84952
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/V1;
    :cond_5
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    .line 84953
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/TC;->A04()Lorg/json/JSONObject;

    move-result-object v3

    .line 84954
    .local v0, "dataObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_9

    .line 84955
    const/16 v2, 0x14c

    const/16 v1, 0xa

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84956
    .local v5, "requestId":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->AJ0(Ljava/lang/String;)V

    .line 84957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/SQ;->A0D(Ljava/lang/String;)V

    .line 84958
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SP;->A00()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    .line 84959
    .local v6, "sdkContext":Lcom/facebook/ads/redexgen/X/cu;
    if-eqz v0, :cond_6

    .line 84960
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/SQ;->A0D(Ljava/lang/String;)V

    .line 84961
    :cond_6
    const/16 v2, 0x112

    const/16 v1, 0x11

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0D(Lorg/json/JSONObject;)V

    .line 84962
    .end local v5    # "requestId":Ljava/lang/String;
    .end local v6    # "sdkContext":Lcom/facebook/ads/redexgen/X/cu;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A05:Lcom/facebook/ads/redexgen/X/VR;

    if-nez v0, :cond_8

    .line 84963
    const/16 v2, 0xf2

    const/16 v1, 0x14

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 84964
    .local v5, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v2

    .line 84965
    .local v6, "error":Lcom/facebook/ads/redexgen/X/V1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 84966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    if-eqz v0, :cond_7

    .line 84967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84968
    :cond_7
    return v7

    .line 84969
    .end local v5    # "errorMessage":Ljava/lang/String;
    .end local v6    # "error":Lcom/facebook/ads/redexgen/X/V1;
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 84970
    :cond_9
    const/16 v2, 0xd4

    const/16 v1, 0x12

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 84971
    .restart local v5    # "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v2

    .line 84972
    .restart local v6    # "error":Lcom/facebook/ads/redexgen/X/V1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 84973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    if-eqz v0, :cond_a

    .line 84974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84975
    :cond_a
    return v7
.end method


# virtual methods
.method public final A0G()J
    .locals 5

    .line 84976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A04:Lcom/facebook/ads/redexgen/X/TE;

    if-eqz v0, :cond_0

    .line 84977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A04:Lcom/facebook/ads/redexgen/X/TE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TE;->A03()J

    move-result-wide v0

    return-wide v0

    .line 84978
    :cond_0
    const-wide/16 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const-string v1, "cOTrI9DB0oxjTyLR1voyMrEgWVbVphTL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-wide v3
.end method

.method public final A0H()Landroid/os/Handler;
    .locals 1

    .line 84979
    sget-object v0, Lcom/facebook/ads/redexgen/X/hQ;->A0F:Landroid/os/Handler;

    return-object v0
.end method

.method public A0I()Lcom/facebook/ads/redexgen/X/Mo;
    .locals 4

    .line 84980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    if-nez v0, :cond_1

    .line 84981
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const-string v1, "c4mFc8cvcfHQyghvzrB7bYP2aMdrhGND"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "OOjdStzIF6ducmayoMT1WxOsFGdjLtMG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 84982
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    sget-object v1, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const-string v1, "oRXWb94touLPnP0lmqQIoCQNN81QkmVq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/iA;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iA;->A0I()Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    return-object v0

    :cond_2
    check-cast v3, Lcom/facebook/ads/redexgen/X/iA;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iA;->A0I()Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/TF;
    .locals 1

    .line 84983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A04:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_0

    .line 84984
    const/4 v0, 0x0

    return-object v0

    .line 84985
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A04:Lcom/facebook/ads/redexgen/X/TE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    return-object v0
.end method

.method public final A0K()V
    .locals 4

    .line 84986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84987
    return-void

    .line 84988
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    sget-object v2, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/hQ;->A0E:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "YS2d1pFjROLoYd3yH38ADYRoaACmCS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 84989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    .line 84990
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MP;->A8c()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    .line 84991
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MP;->A7G()Ljava/lang/String;

    move-result-object v0

    .line 84992
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0D(Ljava/lang/String;Ljava/lang/String;)V

    .line 84993
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A06:Lcom/facebook/ads/redexgen/X/VU;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 84994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A06:Lcom/facebook/ads/redexgen/X/VU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/VU;->A0R(Lcom/facebook/ads/redexgen/X/VT;)V

    .line 84995
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A06:Lcom/facebook/ads/redexgen/X/VU;

    .line 84996
    :cond_2
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    .line 84997
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    .line 84998
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    .line 84999
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0L()V
    .locals 6

    .line 85000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->A3J(J)V

    .line 85001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    if-nez v0, :cond_0

    .line 85002
    return-void

    .line 85003
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MP;->A7G()Ljava/lang/String;

    move-result-object v5

    .line 85004
    .local v0, "clientToken":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 85005
    return-void

    .line 85006
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 85007
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A05(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x140

    const/16 v1, 0xc

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A09:Lcom/facebook/ads/redexgen/X/US;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 85009
    .local v2, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A08:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 85010
    return-void
.end method

.method public final A0M()V
    .locals 5

    .line 85011
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1

    .line 85012
    const/16 v2, 0x6b

    const/16 v1, 0x1a

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 85013
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 85014
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A0Q:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 85015
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 85016
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 85017
    .local v1, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 85018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    if-eqz v0, :cond_0

    .line 85019
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 85020
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5b()V

    .line 85021
    return-void

    .line 85022
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0C:Z

    if-eqz v0, :cond_3

    .line 85023
    const/16 v2, 0xae

    const/16 v1, 0x12

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 85024
    .restart local v0    # "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 85025
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A0M:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 85026
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 85027
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 85028
    .restart local v1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 85029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    if-eqz v0, :cond_2

    .line 85030
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 85031
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5a()V

    .line 85032
    return-void

    .line 85033
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MP;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 85034
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A09:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MP;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/US;->ABS(Ljava/lang/String;)V

    .line 85035
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5c()V

    .line 85036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0C:Z

    .line 85037
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hQ;->A0P()V

    .line 85038
    return-void
.end method

.method public final A0N()V
    .locals 1

    .line 85039
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0Y(Z)V

    .line 85040
    return-void
.end method

.method public final A0O()V
    .locals 2

    .line 85041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A02:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A01(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/MW;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0N(Ljava/lang/String;)V

    .line 85043
    :cond_0
    return-void
.end method

.method public abstract A0P()V
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/MP;)V
    .locals 0

    .line 85044
    if-eqz p1, :cond_0

    .line 85045
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/MP;->onDestroy()V

    .line 85046
    :cond_0
    return-void
.end method

.method public abstract A0R(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;Lcom/facebook/ads/redexgen/X/NU;)V
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/MQ;)V
    .locals 0

    .line 85047
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    .line 85048
    return-void
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/NU;)V
    .locals 4

    .line 85049
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NU;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 85050
    .local v0, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0xd2

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0V(Ljava/lang/String;)V

    .line 85051
    return-void
.end method

.method public A0U(Ljava/lang/String;)V
    .locals 1

    .line 85052
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 85053
    return-void
.end method

.method public final A0V(Ljava/lang/String;)V
    .locals 3

    .line 85054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5V()V

    .line 85055
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A09:Lcom/facebook/ads/redexgen/X/US;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 85057
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A04:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 85058
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    :cond_0
    return-void
.end method

.method public final A0W(Ljava/lang/String;)V
    .locals 0

    .line 85059
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/hQ;->A0U(Ljava/lang/String;)V

    .line 85060
    return-void
.end method

.method public final A0X(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 0

    .line 85061
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hQ;->A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 85062
    return-void
.end method

.method public A0Y(Z)V
    .locals 1

    .line 85063
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0C:Z

    if-nez v0, :cond_0

    .line 85064
    return-void

    .line 85065
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5d()V

    .line 85066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0Q(Lcom/facebook/ads/redexgen/X/MP;)V

    .line 85067
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0C:Z

    .line 85068
    return-void
.end method

.method public final A0Z()Z
    .locals 1

    .line 85069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A04:Lcom/facebook/ads/redexgen/X/TE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A04:Lcom/facebook/ads/redexgen/X/TE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TE;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized ADB(Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 2

    monitor-enter p0

    .line 85070
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hQ;->A0H()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/hR;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/hR;-><init>(Lcom/facebook/ads/redexgen/X/hQ;Lcom/facebook/ads/redexgen/X/V1;)V

    .line 85071
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85072
    monitor-exit p0

    return-void

    .line 85073
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/hQ;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/V1;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFO(Lcom/facebook/ads/redexgen/X/PW;)V
    .locals 5

    monitor-enter p0

    .line 85074
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hQ;->A0B(Lcom/facebook/ads/redexgen/X/PW;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85075
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/PW;
    :catch_0
    move-exception v4

    .line 85076
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 85077
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v3

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A07(III)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/ads/redexgen/X/Sv;->A0T:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 85078
    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85079
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 85080
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/hQ;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/PW;
    :catchall_0
    move-exception v0

    .end local p1
    monitor-exit p0

    throw v0
.end method
