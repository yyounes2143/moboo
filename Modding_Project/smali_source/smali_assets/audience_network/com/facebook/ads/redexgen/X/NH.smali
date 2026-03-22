.class public final Lcom/facebook/ads/redexgen/X/NH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/NG;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/SF;

.field public A01:Lcom/facebook/ads/redexgen/X/Zt;

.field public A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/bt;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/Mo;

.field public final A04:Lcom/facebook/ads/redexgen/X/NG;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1398
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SwW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nKJOmWTx3LjNZvOp7YbBROgXIyGkfXUh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cNvS8LZQYgXEdOP85dYAvAy4C3J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ICxq6EmLG0dgZi7UJ5PBV2wBsvrmCfpb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tKedy3gZYTLe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bmz0vq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hvIAQTYE0cdtFIL2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tj9oqRvQS19ndgZTuA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NH;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NH;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/NG;Ljava/lang/String;)V
    .locals 1

    .line 53691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53692
    sget-object v0, Lcom/facebook/ads/redexgen/X/Zt;->A05:Lcom/facebook/ads/redexgen/X/Zt;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A01:Lcom/facebook/ads/redexgen/X/Zt;

    .line 53693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A02:Ljava/util/ArrayList;

    .line 53694
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NU;->A03()Lorg/json/JSONObject;

    move-result-object v0

    .line 53695
    .local v0, "dataObject":Lorg/json/JSONObject;
    invoke-static {p1, p2, p4, v0}, Lcom/facebook/ads/redexgen/X/NH;->A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NU;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 53696
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NH;->A04:Lcom/facebook/ads/redexgen/X/NG;

    .line 53697
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/AdError;
    .locals 6

    .line 53698
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A27()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53699
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0Z:I

    const/4 v2, 0x5

    const/16 v1, 0x2b

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 53700
    const/16 v2, 0x3e

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 53701
    const/16 v0, 0x7d6

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    return-object v0

    .line 53702
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NU;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Mo;
    .locals 4

    .line 53703
    const/4 v3, 0x0

    .line 53704
    .local v0, "adDataBundle":Lcom/facebook/ads/redexgen/X/Mo;
    const/16 v2, 0x41

    const/16 v1, 0xc

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53705
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p3, p0, v0}, Lcom/facebook/ads/redexgen/X/hw;->A01(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/dL;Z)Lcom/facebook/ads/redexgen/X/hw;

    move-result-object v3

    .line 53706
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1L(Z)V

    .line 53707
    const/16 v2, 0x60

    const/16 v1, 0xc

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1I(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53708
    :catch_0
    :cond_0
    if-nez v3, :cond_1

    .line 53709
    invoke-static {p3, p0}, Lcom/facebook/ads/redexgen/X/77;->A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/redexgen/X/77;

    move-result-object v3

    .line 53710
    :cond_1
    invoke-virtual {v3, p2}, Lcom/facebook/ads/redexgen/X/Mo;->A1H(Ljava/lang/String;)V

    .line 53711
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NU;->A01()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    .line 53712
    .local v1, "definition":Lcom/facebook/ads/redexgen/X/TF;
    if-eqz v0, :cond_2

    .line 53713
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TF;->A06()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1D(I)V

    .line 53714
    :cond_2
    return-object v3
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/NH;)Lcom/facebook/ads/redexgen/X/NG;
    .locals 0

    .line 53715
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NH;->A04:Lcom/facebook/ads/redexgen/X/NG;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/redexgen/X/SF;
    .locals 1

    .line 53716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A00:Lcom/facebook/ads/redexgen/X/SF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A00:Lcom/facebook/ads/redexgen/X/SF;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    goto :goto_0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NH;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x61

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/NH;)Ljava/util/ArrayList;
    .locals 0

    .line 53717
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NH;->A02:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NH;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x23t
        0x17t
        0x23t
        0x1ct
        0x1bt
        -0x42t
        -0x1dt
        -0x17t
        -0x26t
        -0x19t
        -0x1dt
        -0x2at
        -0x1ft
        -0x6bt
        -0x46t
        -0x19t
        -0x19t
        -0x1ct
        -0x19t
        -0x6bt
        -0x59t
        -0x5bt
        -0x5bt
        -0x55t
        -0x6bt
        -0x14t
        -0x22t
        -0x17t
        -0x23t
        -0x1ct
        -0x16t
        -0x17t
        -0x6bt
        -0x2at
        -0x6bt
        -0x15t
        -0x2at
        -0x1ft
        -0x22t
        -0x27t
        -0x6bt
        -0x4at
        -0x27t
        -0x42t
        -0x1dt
        -0x25t
        -0x1ct
        -0x5dt
        0x15t
        0x18t
        0x13t
        0x18t
        0x15t
        0x28t
        0x15t
        0x13t
        0x16t
        0x29t
        0x22t
        0x18t
        0x20t
        0x19t
        -0x1dt
        -0xet
        -0x15t
        -0x24t
        -0x1ft
        -0x26t
        -0x1et
        -0x19t
        -0x28t
        -0x17t
        -0x26t
        -0x15t
        -0x26t
        -0x1at
        -0x14t
        0x12t
        0x17t
        0x10t
        0x18t
        0x1dt
        0x14t
        0x13t
        -0x10t
        0x13t
        -0xdt
        0x10t
        0x23t
        0x10t
        -0xft
        0x24t
        0x1dt
        0x13t
        0x1bt
        0x14t
        0x3ft
        0x44t
        0x4at
        0x3bt
        0x48t
        0x49t
        0x4at
        0x3ft
        0x4at
        0x3ft
        0x37t
        0x42t
    .end array-data
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/NH;Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/hw;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/NG;)V
    .locals 0

    .line 53718
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/NH;->A0A(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/hw;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/NG;)V

    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/77;)V
    .locals 10

    .line 53719
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A07()Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v0

    .line 53720
    .local v0, "playableData":Lcom/facebook/ads/redexgen/X/NB;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A0B()Lcom/facebook/ads/redexgen/X/Zt;

    move-result-object v0

    .line 53721
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NH;->A0B(Lcom/facebook/ads/redexgen/X/Zt;)V

    .line 53722
    new-instance v2, Lcom/facebook/ads/redexgen/X/hb;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/hb;-><init>(Lcom/facebook/ads/redexgen/X/NH;)V

    .line 53723
    .local v1, "playablePreCacheListener":Lcom/facebook/ads/redexgen/X/NP;
    new-instance v4, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 53724
    .local v2, "cacheManager":Lcom/facebook/ads/redexgen/X/SF;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A2A(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 53725
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rf;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 53726
    .local p0, "isUnifiedAssetsLoaderEnabled":Z
    :goto_1
    if-eqz v8, :cond_0

    .line 53727
    new-instance v3, Lcom/facebook/ads/redexgen/X/Rf;

    .line 53728
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v5

    .line 53729
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v6

    .line 53730
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/ha;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/ha;-><init>(Lcom/facebook/ads/redexgen/X/NH;)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Rf;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Re;)V

    .line 53731
    .local v3, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/Rf;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 53732
    .local v4, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0e(Lcom/facebook/ads/redexgen/X/Ua;)V

    .line 53733
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rf;->A0B()V

    .line 53734
    .end local v3    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/Rf;
    .end local v4    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    :goto_2
    return-void

    .line 53735
    :cond_0
    invoke-static {p1, p2, v1, v2}, Lcom/facebook/ads/redexgen/X/NR;->A02(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;ZLcom/facebook/ads/redexgen/X/NP;)V

    goto :goto_2

    .line 53736
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 53737
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Zt;->A05:Lcom/facebook/ads/redexgen/X/Zt;

    goto :goto_0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/NG;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/hy;",
            "I",
            "Lcom/facebook/ads/redexgen/X/NG;",
            ")V"
        }
    .end annotation

    .line 53738
    .local p1, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    move-object/from16 v22, p3

    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A1Y()Z

    move-result v21

    .line 53739
    .local v6, "isDSL":Z
    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/NH;->A03(Lcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/redexgen/X/SF;

    move-result-object v13

    .line 53740
    .local v14, "cacheManager":Lcom/facebook/ads/redexgen/X/SF;
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 53741
    .local v15, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0e(Lcom/facebook/ads/redexgen/X/Ua;)V

    .line 53742
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/U7;->A2A(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_9

    .line 53743
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rf;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v17, 0x1

    .line 53744
    .local v16, "isUnifiedAssetsLoaderEnabled":Z
    :goto_0
    move-object/from16 v23, p5

    if-eqz v17, :cond_0

    .line 53745
    new-instance v12, Lcom/facebook/ads/redexgen/X/Rf;

    .line 53746
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v14

    .line 53747
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v15

    .line 53748
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v16

    new-instance v18, Lcom/facebook/ads/redexgen/X/hi;

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    invoke-direct/range {v18 .. v23}, Lcom/facebook/ads/redexgen/X/hi;-><init>(Lcom/facebook/ads/redexgen/X/NH;Lcom/facebook/ads/redexgen/X/dL;ZLcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/NG;)V

    invoke-direct/range {v12 .. v18}, Lcom/facebook/ads/redexgen/X/Rf;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Re;)V

    .line 53749
    .local v0, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/Rf;
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Rf;->A0B()V

    .line 53750
    .end local v0    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/Rf;
    .end local v9
    .end local v11
    .end local v12
    :goto_1
    return-void

    .line 53751
    :cond_0
    const/16 v5, 0x60

    const/16 v1, 0xc

    const/16 v0, 0x75

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v1

    if-eqz v21, :cond_1

    .line 53752
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A0s()Ljava/lang/String;

    move-result-object v5

    .line 53753
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/SB;

    invoke-direct {v7, v5, v0, v1}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53754
    .local v0, "cacheFileData":Lcom/facebook/ads/redexgen/X/SB;
    iput-boolean v6, v7, Lcom/facebook/ads/redexgen/X/SB;->A04:Z

    .line 53755
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/16 v0, 0x4e

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/SB;->A03:Ljava/lang/String;

    .line 53756
    invoke-virtual {v13, v7}, Lcom/facebook/ads/redexgen/X/SF;->A0Y(Lcom/facebook/ads/redexgen/X/SB;)V

    .line 53757
    .end local v0    # "cacheFileData":Lcom/facebook/ads/redexgen/X/SB;
    :cond_1
    new-instance v7, Lcom/facebook/ads/redexgen/X/SD;

    .line 53758
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/facebook/ads/redexgen/X/cm;->A04:I

    sget v10, Lcom/facebook/ads/redexgen/X/cm;->A04:I

    .line 53759
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v11

    const/16 v6, 0x60

    const/16 v5, 0xc

    const/16 v0, 0x75

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 53760
    invoke-virtual {v13, v7}, Lcom/facebook/ads/redexgen/X/SF;->A0d(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 53761
    sget-object v0, Lcom/facebook/ads/CacheFlag;->VIDEO:Lcom/facebook/ads/CacheFlag;

    move-object/from16 v5, p2

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 53762
    .local v9, "cacheVideos":Z
    const/4 v11, 0x0

    .line 53763
    .local v0, "i":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/eF;->A03()Z

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/U7;->A2s(Landroid/content/Context;Z)Z

    move-result v10

    .line 53764
    .local v11, "useExoPlayerCacheForDSL":Z
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/hy;->A27()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v0    # "i":I
    .local v12, "i":I
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Mp;

    .line 53765
    .local v0, "adInfo":Lcom/facebook/ads/redexgen/X/Mp;
    new-instance v14, Lcom/facebook/ads/redexgen/X/SD;

    .line 53766
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v15

    .line 53767
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/NN;->A00(Lcom/facebook/ads/redexgen/X/Ms;)I

    move-result v16

    .line 53768
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/NN;->A01(Lcom/facebook/ads/redexgen/X/Ms;)I

    move-result v17

    .line 53769
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v18

    const/16 v7, 0x60

    const/16 v6, 0xc

    const/16 v5, 0x75

    invoke-static {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 53770
    .local v3, "imageData":Lcom/facebook/ads/redexgen/X/SD;
    if-nez v11, :cond_7

    .line 53771
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/SF;->A0c(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 53772
    :goto_3
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/N0;->A02()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 53773
    .local v5, "endCardUrl":Ljava/lang/String;
    new-instance v14, Lcom/facebook/ads/redexgen/X/SD;

    .line 53774
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v18

    const/16 v7, 0x60

    const/16 v6, 0xc

    const/16 v5, 0x75

    invoke-static {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v19

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 53775
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/SF;->A0d(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 53776
    .end local v5    # "endCardUrl":Ljava/lang/String;
    goto :goto_4

    .line 53777
    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 53778
    new-instance v14, Lcom/facebook/ads/redexgen/X/SB;

    .line 53779
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v15

    .line 53780
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v16

    .line 53781
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A06()J

    move-result-wide v18

    const/16 v6, 0x60

    const/16 v5, 0xc

    const/16 v0, 0x75

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 53782
    .local v4, "fileData":Lcom/facebook/ads/redexgen/X/SB;
    iput-boolean v2, v14, Lcom/facebook/ads/redexgen/X/SB;->A04:Z

    .line 53783
    if-nez v11, :cond_5

    .line 53784
    if-eqz v21, :cond_4

    if-nez v10, :cond_4

    .line 53785
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/SF;->A0Y(Lcom/facebook/ads/redexgen/X/SB;)V

    .line 53786
    .end local v4    # "fileData":Lcom/facebook/ads/redexgen/X/SB;
    .end local v0    # "adInfo":Lcom/facebook/ads/redexgen/X/Mp;
    .end local v3    # "imageData":Lcom/facebook/ads/redexgen/X/SD;
    :cond_3
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 53787
    goto/16 :goto_2

    .line 53788
    :cond_4
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/SF;->A0b(Lcom/facebook/ads/redexgen/X/SB;)V

    goto :goto_5

    .line 53789
    :cond_5
    if-eqz v21, :cond_6

    if-nez v10, :cond_6

    .line 53790
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/SF;->A0Z(Lcom/facebook/ads/redexgen/X/SB;)V

    goto :goto_5

    .line 53791
    :cond_6
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/SF;->A0a(Lcom/facebook/ads/redexgen/X/SB;)V

    goto :goto_5

    .line 53792
    :cond_7
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/SF;->A0d(Lcom/facebook/ads/redexgen/X/SD;)V

    goto/16 :goto_3

    .line 53793
    :cond_8
    new-instance v5, Lcom/facebook/ads/redexgen/X/hg;

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v3

    invoke-direct/range {v18 .. v23}, Lcom/facebook/ads/redexgen/X/hg;-><init>(Lcom/facebook/ads/redexgen/X/NH;Lcom/facebook/ads/redexgen/X/dL;ZLcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/NG;)V

    .line 53794
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/S8;

    move/from16 v3, p4

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53795
    invoke-virtual {v13, v5, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0X(Lcom/facebook/ads/redexgen/X/S7;Lcom/facebook/ads/redexgen/X/S8;)V

    goto/16 :goto_1

    .line 53796
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/hw;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/NG;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/hw;",
            "Lcom/facebook/ads/redexgen/X/hy;",
            "I",
            "Lcom/facebook/ads/redexgen/X/NG;",
            ")V"
        }
    .end annotation

    .line 53797
    .local v11, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/hk;

    move-object v1, p0

    move-object/from16 v6, p6

    move/from16 v5, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v7, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/hk;-><init>(Lcom/facebook/ads/redexgen/X/NH;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/hw;ILcom/facebook/ads/redexgen/X/NG;Ljava/util/EnumSet;)V

    move-object v8, p0

    move-object v9, v2

    move-object v10, v7

    move-object v11, v3

    move v12, v5

    move-object v13, v0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/NH;->A09(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/NG;)V

    .line 53798
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Zt;)V
    .locals 0

    .line 53799
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NH;->A01:Lcom/facebook/ads/redexgen/X/Zt;

    .line 53800
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;)Z
    .locals 2

    .line 53801
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/NH;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/AdError;

    move-result-object v1

    .line 53802
    .local v0, "adError":Lcom/facebook/ads/AdError;
    if-eqz v1, :cond_0

    .line 53803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A04:Lcom/facebook/ads/redexgen/X/NG;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/NG;->ACF(Lcom/facebook/ads/AdError;)V

    .line 53804
    const/4 v0, 0x1

    return v0

    .line 53805
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0D()Lcom/facebook/ads/redexgen/X/Mo;
    .locals 1

    .line 53806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    return-object v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/Vb;
    .locals 5

    .line 53807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53808
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A04:Lcom/facebook/ads/redexgen/X/Vb;

    return-object v0

    .line 53809
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v4, Lcom/facebook/ads/redexgen/X/hy;

    .line 53810
    .local v0, "adDataBundle":Lcom/facebook/ads/redexgen/X/hy;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Mo;->A1Y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53811
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A06:Lcom/facebook/ads/redexgen/X/Vb;

    return-object v0

    .line 53812
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/hy;->A27()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_2

    .line 53813
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0A:Lcom/facebook/ads/redexgen/X/Vb;

    return-object v0

    .line 53814
    :cond_2
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A07()Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/NH;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/NH;->A06:[Ljava/lang/String;

    const-string v1, "HO5lN2vl3hawZ3xdOTbB4PXxItmZOFKM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "QabHGQsenJFHZf5mHftqzVXi6FXcwsQx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 53815
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0C:Lcom/facebook/ads/redexgen/X/Vb;

    return-object v0

    .line 53816
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/NH;->A0L(Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/NH;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/NH;->A06:[Ljava/lang/String;

    const-string v1, "iV2CDA2M2IfUZLXvhnmiNr1pV0Sur2CQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "GDT4frbvCKvkZrCQcOaJTMqN9T6RIdn0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 53817
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0D:Lcom/facebook/ads/redexgen/X/Vb;

    return-object v0

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_0

    .line 53818
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0B:Lcom/facebook/ads/redexgen/X/Vb;

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/Zt;
    .locals 1

    .line 53819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A01:Lcom/facebook/ads/redexgen/X/Zt;

    return-object v0
.end method

.method public final A0G()Ljava/lang/String;
    .locals 1

    .line 53820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v0, Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A20()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53822
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .locals 1

    .line 53823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A04:Lcom/facebook/ads/redexgen/X/NG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NG;->AJm()V

    .line 53824
    return-void
.end method

.method public final A0I(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V
    .locals 3

    .line 53825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Mo;->A1F(Lcom/facebook/ads/RewardData;)V

    .line 53826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/Mo;->A1J(Ljava/lang/String;)V

    .line 53827
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NH;->A0D()Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53828
    const/16 v2, 0x4d

    const/16 v1, 0x13

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53829
    :cond_0
    const/16 v2, 0x30

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53830
    return-void
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 53831
    .local p1, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NH;->A0E()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A04:Lcom/facebook/ads/redexgen/X/Vb;

    move-object v5, p2

    move-object v4, p1

    if-ne v1, v0, :cond_2

    .line 53832
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v6, Lcom/facebook/ads/redexgen/X/hw;

    .line 53833
    .local v0, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/hw;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/hw;->A1w()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v7

    .line 53834
    .local v8, "firstAdDataBundle":Lcom/facebook/ads/redexgen/X/hy;
    invoke-direct {p0, v4, v7}, Lcom/facebook/ads/redexgen/X/NH;->A0C(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v7, :cond_1

    .line 53835
    .restart local v0    # "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/hw;
    .restart local v8    # "firstAdDataBundle":Lcom/facebook/ads/redexgen/X/hy;
    :cond_0
    return-void

    .line 53836
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A04:Lcom/facebook/ads/redexgen/X/NG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NG;->AGo()V

    .line 53837
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/NH;->A04:Lcom/facebook/ads/redexgen/X/NG;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/NH;->A0A(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/hw;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/NG;)V

    .line 53838
    .end local v0    # "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/hw;
    .end local v8    # "firstAdDataBundle":Lcom/facebook/ads/redexgen/X/hy;
    goto :goto_0

    .line 53839
    .end local v0
    .end local v8
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v3, Lcom/facebook/ads/redexgen/X/hy;

    sget-object v1, Lcom/facebook/ads/redexgen/X/NH;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/NH;->A06:[Ljava/lang/String;

    const-string v1, "h3j4XQE4N9RDZ4AU6tvjsFYKX3e30HKG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "lDhcJ7lgFtqhZjTb781X3zaoWDc2BWUc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/NH;->A0C(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53840
    return-void

    .line 53841
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A04:Lcom/facebook/ads/redexgen/X/NG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NG;->AGo()V

    .line 53842
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NH;->A0E()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0C:Lcom/facebook/ads/redexgen/X/Vb;

    if-ne v1, v0, :cond_5

    .line 53843
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v3, Lcom/facebook/ads/redexgen/X/77;

    sget-object v2, Lcom/facebook/ads/redexgen/X/NH;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/NH;->A06:[Ljava/lang/String;

    const-string v1, "0uVLF1bkkTEn2WeYm46QMmOd1A6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/NH;->A08(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/77;)V

    .line 53844
    :goto_0
    return-void

    .line 53845
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/NH;->A08(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/77;)V

    goto :goto_0

    .line 53846
    :cond_5
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v6, Lcom/facebook/ads/redexgen/X/77;

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/NH;->A04:Lcom/facebook/ads/redexgen/X/NG;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/NH;->A09(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/NG;)V

    goto :goto_0

    .line 53847
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0K()Z
    .locals 1

    .line 53848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1P()Z

    move-result v0

    return v0
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/hy;)Z
    .locals 1

    .line 53849
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
