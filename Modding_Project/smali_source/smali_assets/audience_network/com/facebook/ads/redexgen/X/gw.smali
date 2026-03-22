.class public final Lcom/facebook/ads/redexgen/X/gw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nc;


# static fields
.field public static A0A:[B

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/RewardedVideoAd;

.field public A04:Lcom/facebook/ads/redexgen/X/Mo;

.field public A05:Lcom/facebook/ads/redexgen/X/6r;

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/dL;

.field public final A08:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

.field public final A09:Lcom/facebook/ads/redexgen/X/gm;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2791
    invoke-static {}, Lcom/facebook/ads/redexgen/X/gw;->A0A()V

    const-class v0, Lcom/facebook/ads/redexgen/X/gw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gw;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gm;Lcom/facebook/ads/redexgen/X/Ns;Ljava/lang/String;)V
    .locals 2

    .line 83884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83885
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A00:I

    .line 83886
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A06:Z

    .line 83887
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A01:J

    .line 83888
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    .line 83889
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/gm;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 83890
    new-instance v0, Lcom/facebook/ads/redexgen/X/gj;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/facebook/ads/redexgen/X/gj;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ns;Lcom/facebook/ads/redexgen/X/gw;Lcom/facebook/ads/redexgen/X/gm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A08:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    .line 83891
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/gw;)J
    .locals 1

    .line 83892
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/gw;)J
    .locals 1

    .line 83893
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A02:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 0

    .line 83894
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/gw;->A03:Lcom/facebook/ads/RewardedVideoAd;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/gw;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 0

    .line 83895
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gw;->A03:Lcom/facebook/ads/RewardedVideoAd;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;
    .locals 0

    .line 83896
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/gw;->A08:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/Mo;
    .locals 0

    .line 83897
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/gw;->A04:Lcom/facebook/ads/redexgen/X/Mo;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/gw;Lcom/facebook/ads/redexgen/X/Mo;)Lcom/facebook/ads/redexgen/X/Mo;
    .locals 0

    .line 83898
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gw;->A04:Lcom/facebook/ads/redexgen/X/Mo;

    return-object p1
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/6r;
    .locals 0

    .line 83899
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;
    .locals 0

    .line 83900
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gw;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x70

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gw;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x74t
        -0x5ft
        0x53t
        -0x6ct
        -0x69t
        0x53t
        -0x61t
        -0x5et
        -0x6ct
        -0x69t
        0x53t
        -0x64t
        -0x5at
        0x53t
        -0x6ct
        -0x61t
        -0x5bt
        -0x68t
        -0x6ct
        -0x69t
        -0x54t
        0x53t
        -0x64t
        -0x5ft
        0x53t
        -0x5dt
        -0x5bt
        -0x5et
        -0x66t
        -0x5bt
        -0x68t
        -0x5at
        -0x5at
        0x61t
        0x53t
        -0x74t
        -0x5et
        -0x58t
        0x53t
        -0x5at
        -0x65t
        -0x5et
        -0x58t
        -0x61t
        -0x69t
        0x53t
        -0x56t
        -0x6ct
        -0x64t
        -0x59t
        0x53t
        -0x67t
        -0x5et
        -0x5bt
        0x53t
        -0x6ct
        -0x69t
        0x7ft
        -0x5et
        -0x6ct
        -0x69t
        -0x68t
        -0x69t
        0x5bt
        0x5ct
        0x53t
        -0x59t
        -0x5et
        0x53t
        -0x6bt
        -0x68t
        0x53t
        -0x6at
        -0x6ct
        -0x61t
        -0x61t
        -0x68t
        -0x69t
        -0x3ct
        -0xft
        -0xft
        -0x12t
        -0xft
        -0x61t
        -0x15t
        -0x12t
        -0x20t
        -0x1dt
        -0x18t
        -0x13t
        -0x1at
        -0x61t
        -0xft
        -0x1ct
        -0xat
        -0x20t
        -0xft
        -0x1dt
        -0x1ct
        -0x1dt
        -0x61t
        -0xbt
        -0x18t
        -0x1dt
        -0x1ct
        -0x12t
        -0x61t
        -0x20t
        -0x1dt
        -0x13t
        -0x4t
        -0xbt
    .end array-data
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/gw;Z)V
    .locals 0

    .line 83901
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gw;->A0D(Z)V

    return-void
.end method

.method private A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 9

    .line 83902
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A06:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_0

    .line 83903
    sget-object v3, Lcom/facebook/ads/redexgen/X/gw;->A0B:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83904
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gw;->A0D(Z)V

    .line 83905
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A06:Z

    .line 83906
    new-instance v2, Lcom/facebook/ads/redexgen/X/NT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/gm;->A0D:Ljava/lang/String;

    sget-object v4, Lcom/facebook/ads/redexgen/X/V6;->A07:Lcom/facebook/ads/redexgen/X/V6;

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v6, Lcom/facebook/ads/redexgen/X/V4;->A08:Lcom/facebook/ads/redexgen/X/V4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/gm;->A0C:Lcom/facebook/ads/redexgen/X/TL;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/NT;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/V6;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/V4;ILcom/facebook/ads/redexgen/X/TL;)V

    .line 83907
    .local v0, "adControllerConfig":Lcom/facebook/ads/redexgen/X/NT;
    invoke-virtual {v2, p3}, Lcom/facebook/ads/redexgen/X/NT;->A08(Z)V

    .line 83908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83909
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gw;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A06:Ljava/lang/String;

    .line 83910
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A02(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83911
    .local v1, "extraHints":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 83912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/gm;->A06:Ljava/lang/String;

    .line 83913
    .end local v1    # "extraHints":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A06:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/NT;->A06(Ljava/lang/String;)V

    .line 83914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A07:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/NT;->A07(Ljava/lang/String;)V

    .line 83915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/gm;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    .line 83916
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    new-instance v0, Lcom/facebook/ads/redexgen/X/gy;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gy;-><init>(Lcom/facebook/ads/redexgen/X/gw;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0S(Lcom/facebook/ads/redexgen/X/MQ;)V

    .line 83917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/hQ;->A0X(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 83918
    return-void
.end method

.method private A0D(Z)V
    .locals 2

    .line 83919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_0

    .line 83920
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    new-instance v0, Lcom/facebook/ads/redexgen/X/gx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gx;-><init>(Lcom/facebook/ads/redexgen/X/gw;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0S(Lcom/facebook/ads/redexgen/X/MQ;)V

    .line 83921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/hQ;->A0Y(Z)V

    .line 83922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0K()V

    .line 83923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    .line 83924
    :cond_0
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/gw;Z)Z
    .locals 0

    .line 83925
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/gw;->A06:Z

    return p1
.end method


# virtual methods
.method public final A0F()J
    .locals 2

    .line 83926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_0

    .line 83927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0G()J

    move-result-wide v0

    return-wide v0

    .line 83928
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/gm;
    .locals 1

    .line 83929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/dL;
    .locals 1

    .line 83930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A07:Lcom/facebook/ads/redexgen/X/dL;

    return-object v0
.end method

.method public final A0I(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 83931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/gm;->A03:Lcom/facebook/ads/RewardData;

    .line 83932
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A06:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_0

    .line 83933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6r;->A0a(Lcom/facebook/ads/RewardData;)V

    .line 83934
    :cond_0
    return-void
.end method

.method public final A0J(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 7

    .line 83935
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A01:J

    .line 83936
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/gw;->A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83937
    :catch_0
    move-exception v6

    .line 83938
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/gw;->A0B:Ljava/lang/String;

    const/16 v2, 0x4e

    const/16 v1, 0x1f

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 83940
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0b:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 83941
    const/16 v2, 0x6d

    const/4 v1, 0x3

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 83942
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v5

    .line 83943
    .local v1, "error":Lcom/facebook/ads/AdError;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 83944
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A01:J

    .line 83945
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 83946
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3F(JILjava/lang/String;)V

    .line 83947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gw;->A08:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gm;->A6c()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 83948
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error":Lcom/facebook/ads/AdError;
    :goto_0
    return-void
.end method

.method public final A0K()Z
    .locals 1

    .line 83949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0Z()Z

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

.method public final A0L()Z
    .locals 1

    .line 83950
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A06:Z

    return v0
.end method

.method public final A0M(IJ)Z
    .locals 4

    .line 83951
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A06:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 83952
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gw;->A08:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A09:Lcom/facebook/ads/redexgen/X/gm;

    .line 83953
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gm;->A6c()Lcom/facebook/ads/Ad;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 83954
    invoke-interface {v3, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 83955
    return v2

    .line 83956
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_1

    .line 83957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A02:J

    .line 83958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NT;->A02(I)V

    .line 83959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/NT;->A03(J)V

    .line 83960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gw;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0M()V

    .line 83961
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/gw;->A06:Z

    .line 83962
    const/4 v0, 0x1

    return v0

    .line 83963
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/gw;->A06:Z

    .line 83964
    return v2
.end method

.method public final destroy()V
    .locals 1

    .line 83965
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gw;->A0D(Z)V

    .line 83966
    return-void
.end method
