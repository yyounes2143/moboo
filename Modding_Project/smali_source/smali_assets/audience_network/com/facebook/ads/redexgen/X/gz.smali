.class public final Lcom/facebook/ads/redexgen/X/gz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nc;


# static fields
.field public static A09:[B

.field public static final A0A:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/InterstitialAd;

.field public A02:Lcom/facebook/ads/redexgen/X/Mo;

.field public A03:Lcom/facebook/ads/redexgen/X/6y;

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/dL;

.field public final A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

.field public final A08:Lcom/facebook/ads/redexgen/X/gv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2792
    invoke-static {}, Lcom/facebook/ads/redexgen/X/gz;->A0A()V

    const-class v0, Lcom/facebook/ads/redexgen/X/gz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gz;->A0A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gv;Lcom/facebook/ads/redexgen/X/Ns;Ljava/lang/String;)V
    .locals 2

    .line 84043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84044
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A00:J

    .line 84045
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    .line 84046
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gv;->A05()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 84047
    new-instance v0, Lcom/facebook/ads/redexgen/X/gk;

    invoke-direct {v0, p3, p2, p0}, Lcom/facebook/ads/redexgen/X/gk;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ns;Lcom/facebook/ads/redexgen/X/gz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

    .line 84048
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/gz;)J
    .locals 1

    .line 84049
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAd;
    .locals 0

    .line 84050
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/gz;->A01:Lcom/facebook/ads/InterstitialAd;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/gz;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;
    .locals 0

    .line 84051
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gz;->A01:Lcom/facebook/ads/InterstitialAd;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;
    .locals 0

    .line 84052
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/gz;->A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/Mo;
    .locals 0

    .line 84053
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/gz;->A02:Lcom/facebook/ads/redexgen/X/Mo;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/gz;Lcom/facebook/ads/redexgen/X/Mo;)Lcom/facebook/ads/redexgen/X/Mo;
    .locals 0

    .line 84054
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gz;->A02:Lcom/facebook/ads/redexgen/X/Mo;

    return-object p1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;
    .locals 0

    .line 84055
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/gz;Lcom/facebook/ads/redexgen/X/6y;)Lcom/facebook/ads/redexgen/X/6y;
    .locals 0

    .line 84056
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    return-object p1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;
    .locals 0

    .line 84057
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gz;->A09:[B

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

.method public static A0A()V
    .locals 1

    const/16 v0, 0x85

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gz;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x58t
        -0x2bt
        -0x79t
        -0x38t
        -0x35t
        -0x79t
        -0x2dt
        -0x2at
        -0x38t
        -0x35t
        -0x79t
        -0x30t
        -0x26t
        -0x79t
        -0x38t
        -0x2dt
        -0x27t
        -0x34t
        -0x38t
        -0x35t
        -0x20t
        -0x79t
        -0x30t
        -0x2bt
        -0x79t
        -0x29t
        -0x27t
        -0x2at
        -0x32t
        -0x27t
        -0x34t
        -0x26t
        -0x26t
        -0x6bt
        -0x79t
        -0x40t
        -0x2at
        -0x24t
        -0x79t
        -0x26t
        -0x31t
        -0x2at
        -0x24t
        -0x2dt
        -0x35t
        -0x79t
        -0x22t
        -0x38t
        -0x30t
        -0x25t
        -0x79t
        -0x33t
        -0x2at
        -0x27t
        -0x79t
        -0x38t
        -0x35t
        -0x4dt
        -0x2at
        -0x38t
        -0x35t
        -0x34t
        -0x35t
        -0x71t
        -0x70t
        -0x79t
        -0x25t
        -0x2at
        -0x79t
        -0x37t
        -0x34t
        -0x79t
        -0x36t
        -0x38t
        -0x2dt
        -0x2dt
        -0x34t
        -0x35t
        -0x67t
        -0x42t
        -0x3ct
        -0x4bt
        -0x3et
        -0x3dt
        -0x3ct
        -0x47t
        -0x3ct
        -0x47t
        -0x4ft
        -0x44t
        0x70t
        -0x44t
        -0x41t
        -0x4ft
        -0x4ct
        0x70t
        -0x4dt
        -0x4ft
        -0x44t
        -0x44t
        -0x4bt
        -0x4ct
        0x70t
        -0x39t
        -0x48t
        -0x47t
        -0x44t
        -0x4bt
        0x70t
        -0x3dt
        -0x48t
        -0x41t
        -0x39t
        -0x47t
        -0x42t
        -0x49t
        0x70t
        -0x47t
        -0x42t
        -0x3ct
        -0x4bt
        -0x3et
        -0x3dt
        -0x3ct
        -0x47t
        -0x3ct
        -0x47t
        -0x4ft
        -0x44t
        0x7et
        -0x21t
        -0x12t
        -0x19t
    .end array-data
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/gz;Z)Z
    .locals 0

    .line 84058
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/gz;->A05:Z

    return p1
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/gz;Z)Z
    .locals 0

    .line 84059
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/gz;->A04:Z

    return p1
.end method


# virtual methods
.method public final A0D()J
    .locals 2

    .line 84060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    if-eqz v0, :cond_0

    .line 84061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0G()J

    move-result-wide v0

    return-wide v0

    .line 84062
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/gv;
    .locals 1

    .line 84063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/dL;
    .locals 1

    .line 84064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    return-object v0
.end method

.method public final A0G(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84065
    .local p1, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A00:J

    .line 84066
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A05:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    if-eqz v0, :cond_0

    .line 84067
    sget-object v3, Lcom/facebook/ads/redexgen/X/gz;->A0A:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84068
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A05:Z

    .line 84069
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A04:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 84071
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0L:I

    const/16 v2, 0x4e

    const/16 v1, 0x34

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A09(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 84072
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 84073
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 84074
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 84075
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A00:J

    .line 84076
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v2

    .line 84077
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 84078
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 84079
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3F(JILjava/lang/String;)V

    .line 84080
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/gz;->A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    .line 84081
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v3

    .line 84082
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 84083
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 84084
    return-void

    .line 84085
    .end local v0    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    if-eqz v0, :cond_2

    .line 84086
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    new-instance v0, Lcom/facebook/ads/redexgen/X/hA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/hA;-><init>(Lcom/facebook/ads/redexgen/X/gz;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0S(Lcom/facebook/ads/redexgen/X/MQ;)V

    .line 84087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0N()V

    .line 84088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0K()V

    .line 84089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    .line 84090
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 84091
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/facebook/ads/redexgen/X/NT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    .line 84092
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A0A()Ljava/lang/String;

    move-result-object v3

    .line 84093
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/V8;->A00(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/redexgen/X/V6;

    move-result-object v4

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v6, Lcom/facebook/ads/redexgen/X/V4;->A08:Lcom/facebook/ads/redexgen/X/V4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    .line 84094
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A06()Lcom/facebook/ads/redexgen/X/TL;

    move-result-object v9

    const/4 v7, 0x1

    move-object v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/NT;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/V6;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/V4;ILjava/util/EnumSet;Lcom/facebook/ads/redexgen/X/TL;)V

    .line 84095
    .local v1, "adControllerConfig":Lcom/facebook/ads/redexgen/X/NT;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84096
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    .line 84097
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A08()Ljava/lang/String;

    move-result-object v0

    .line 84098
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A02(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84099
    .local v2, "extraHints":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 84100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/gv;->A0I(Ljava/lang/String;)V

    .line 84101
    .end local v2    # "extraHints":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/NT;->A06(Ljava/lang/String;)V

    .line 84102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/NT;->A07(Ljava/lang/String;)V

    .line 84103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A03()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/NT;->A04(Lcom/facebook/ads/RewardData;)V

    .line 84104
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6y;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/6y;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    .line 84105
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    new-instance v0, Lcom/facebook/ads/redexgen/X/h4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/h4;-><init>(Lcom/facebook/ads/redexgen/X/gz;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0S(Lcom/facebook/ads/redexgen/X/MQ;)V

    .line 84106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/hQ;->A0W(Ljava/lang/String;)V

    .line 84107
    return-void
.end method

.method public final A0H()Z
    .locals 1

    .line 84108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

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

.method public final A0I()Z
    .locals 1

    .line 84109
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A05:Z

    return v0
.end method

.method public final A0J()Z
    .locals 8

    .line 84110
    sget-object v6, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 84111
    .local v0, "showError":Lcom/facebook/ads/AdError;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A05:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 84112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 84113
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A00:J

    .line 84114
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v1

    .line 84115
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    .line 84116
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 84117
    invoke-interface {v4, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3F(JILjava/lang/String;)V

    .line 84118
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gz;->A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 84119
    return v5

    .line 84120
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    if-nez v0, :cond_1

    .line 84121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 84122
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v7

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0S:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 84123
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 84124
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 84125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 84126
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A00:J

    .line 84127
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v2

    .line 84128
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    .line 84129
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 84130
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3F(JILjava/lang/String;)V

    .line 84131
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gz;->A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A08:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 84132
    return v5

    .line 84133
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0M()V

    .line 84134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A04:Z

    .line 84135
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/gz;->A05:Z

    .line 84136
    return v0
.end method

.method public final destroy()V
    .locals 2

    .line 84137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    if-eqz v0, :cond_0

    .line 84138
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    new-instance v0, Lcom/facebook/ads/redexgen/X/h3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/h3;-><init>(Lcom/facebook/ads/redexgen/X/gz;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0S(Lcom/facebook/ads/redexgen/X/MQ;)V

    .line 84139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0Y(Z)V

    .line 84140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0K()V

    .line 84141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A03:Lcom/facebook/ads/redexgen/X/6y;

    .line 84142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A05:Z

    .line 84143
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gz;->A04:Z

    .line 84144
    :cond_0
    return-void
.end method
