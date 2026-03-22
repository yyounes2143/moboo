.class public final Lcom/facebook/ads/redexgen/X/6y;
.super Lcom/facebook/ads/redexgen/X/hQ;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NT;)V
    .locals 0

    .line 20779
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hQ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NT;)V

    .line 20780
    return-void
.end method

.method private A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/hO;
    .locals 1

    .line 20781
    new-instance v0, Lcom/facebook/ads/redexgen/X/hO;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/hO;-><init>(Lcom/facebook/ads/redexgen/X/6y;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 0

    .line 20782
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hQ;->A0L()V

    return-void
.end method


# virtual methods
.method public final A0I()Lcom/facebook/ads/redexgen/X/Mo;
    .locals 1

    .line 20783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    check-cast v0, Lcom/facebook/ads/redexgen/X/iS;

    .line 20784
    .local v0, "successfullyLoadedAdapter":Lcom/facebook/ads/redexgen/X/iS;
    if-eqz v0, :cond_0

    .line 20785
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iS;->A09()Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    return-object v0

    .line 20786
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0P()V
    .locals 1

    .line 20787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    check-cast v0, Lcom/facebook/ads/redexgen/X/iS;

    .line 20788
    .local v0, "interstitialAdapter":Lcom/facebook/ads/redexgen/X/iS;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iS;->A0B()Z

    .line 20789
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;Lcom/facebook/ads/redexgen/X/NU;)V
    .locals 12

    .line 20790
    move-object v4, p1

    check-cast v4, Lcom/facebook/ads/redexgen/X/iS;

    .line 20791
    .local v8, "adapter":Lcom/facebook/ads/redexgen/X/iS;
    new-instance v3, Lcom/facebook/ads/redexgen/X/hP;

    move-object/from16 v7, p4

    invoke-direct {v3, p0, v7, v4}, Lcom/facebook/ads/redexgen/X/hP;-><init>(Lcom/facebook/ads/redexgen/X/6y;Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/iS;)V

    .line 20792
    .local v9, "interstitialTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hQ;->A0H()Landroid/os/Handler;

    move-result-object v2

    .line 20793
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TF;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/NT;->A0B:Ljava/util/EnumSet;

    .line 20795
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    if-nez v8, :cond_0

    .line 20796
    sget-object v8, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    .line 20797
    .end local v0    # "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    .local v10, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 20798
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/6y;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/hO;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/NT;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/NT;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/NT;->A02:Lcom/facebook/ads/RewardData;

    .line 20799
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/iS;->A0A(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ma;Lcom/facebook/ads/redexgen/X/NU;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V

    .line 20800
    return-void
.end method
