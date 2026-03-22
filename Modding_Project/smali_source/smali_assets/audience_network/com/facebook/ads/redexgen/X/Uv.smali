.class public final Lcom/facebook/ads/redexgen/X/Uv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
.implements Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

.field public A03:Ljava/lang/String;

.field public A04:Z

.field public final A05:Lcom/facebook/ads/NativeAdBase;

.field public final A06:Lcom/facebook/ads/redexgen/X/Qc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/NativeAdBase;)V
    .locals 1

    .line 68041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68042
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A01:I

    .line 68043
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    .line 68044
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A06:Lcom/facebook/ads/redexgen/X/Qc;

    .line 68045
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Uv;->A05:Lcom/facebook/ads/NativeAdBase;

    .line 68046
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 5

    .line 68047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    if-nez v0, :cond_0

    .line 68048
    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 68049
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 68050
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ul;->A00(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/redexgen/X/Ul;

    move-result-object v4

    .line 68051
    .local v0, "internalMediaCacheFlag":Lcom/facebook/ads/redexgen/X/Ul;
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Uv;->A04:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/SL;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/SL;-><init>(ZII)V

    .line 68052
    .local v1, "nativeAdMemoryCacheConfig":Lcom/facebook/ads/redexgen/X/SL;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A06:Lcom/facebook/ads/redexgen/X/Qc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A03:Ljava/lang/String;

    invoke-virtual {v1, v4, v0, v2}, Lcom/facebook/ads/redexgen/X/Qc;->A1Y(Lcom/facebook/ads/redexgen/X/Ul;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/SL;)V

    .line 68053
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 68054
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Uv;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;
    .locals 0

    .line 68055
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 2

    .line 68056
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A06:Lcom/facebook/ads/redexgen/X/Qc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A05:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Qc;->A1U(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdListener;)V

    .line 68057
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 68058
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Uv;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 68059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A03:Ljava/lang/String;

    .line 68060
    return-object p0
.end method

.method public final withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 68061
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 68062
    return-object p0
.end method

.method public final withPreloadedIconView(II)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 1

    .line 68063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A04:Z

    .line 68064
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A01:I

    .line 68065
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    .line 68066
    return-object p0
.end method
