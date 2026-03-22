.class public final Lcom/facebook/ads/redexgen/X/RE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InterstitialAdApi;
.implements Lcom/facebook/ads/internal/context/Repairable;


# static fields
.field public static A04:[B


# instance fields
.field public final A00:Lcom/facebook/ads/InterstitialAd;

.field public final A01:Lcom/facebook/ads/redexgen/X/gv;

.field public final A02:Lcom/facebook/ads/redexgen/X/6q;

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RE;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/InterstitialAd;)V
    .locals 3

    .line 62303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62304
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/InterstitialAd;

    .line 62305
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/dL;

    if-eqz v0, :cond_0

    .line 62306
    check-cast p1, Lcom/facebook/ads/redexgen/X/dL;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 62307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->getId()Ljava/lang/String;

    move-result-object v2

    .line 62308
    .local v0, "adId":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 62309
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 62310
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/LH;->A3L(Ljava/lang/String;Ljava/lang/String;)V

    .line 62311
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/gv;

    invoke-direct {v0, v1, p3, p2}, Lcom/facebook/ads/redexgen/X/gv;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A01:Lcom/facebook/ads/redexgen/X/gv;

    .line 62312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/dL;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 62313
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RE;->A01:Lcom/facebook/ads/redexgen/X/gv;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6q;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/6q;-><init>(Lcom/facebook/ads/redexgen/X/gv;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A02:Lcom/facebook/ads/redexgen/X/6q;

    .line 62314
    return-void

    .line 62315
    .end local v0    # "adId":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62316
    .restart local v0    # "adId":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/RB;->A06(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RE;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x8b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RE;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x3dt
        -0x3ft
        -0x3dt
        -0x39t
        -0x3at
        -0x3dt
        -0xet
        -0x3ft
        -0x1at
        0x15t
        -0x1et
        -0x1dt
        -0x1dt
        0x17t
        -0x1at
        -0x26t
        -0x26t
        -0x26t
        -0x24t
        0x9t
        0x5t
        0x9t
        0x2t
        0x27t
        0x2dt
        0x1et
        0x2bt
        0x27t
        0x1at
        0x25t
        -0x27t
        0x1et
        0x2bt
        0x2bt
        0x28t
        0x2bt
        -0x19t
        -0x3dt
        0x2ct
        0x51t
        0x57t
        0x48t
        0x55t
        0x56t
        0x57t
        0x4ct
        0x57t
        0x4ct
        0x44t
        0x4ft
        0x3t
        0x44t
        0x47t
        0x3t
        0x47t
        0x48t
        0x56t
        0x57t
        0x55t
        0x52t
        0x5ct
        0x48t
        0x47t
        0x32t
        0x57t
        0x5dt
        0x4et
        0x5bt
        0x5ct
        0x5dt
        0x52t
        0x5dt
        0x52t
        0x4at
        0x55t
        0x9t
        0x4at
        0x4dt
        0x9t
        0x55t
        0x58t
        0x4at
        0x4dt
        0x9t
        0x5bt
        0x4et
        0x5at
        0x5et
        0x4et
        0x5ct
        0x5dt
        0x4et
        0x4dt
        0x27t
        0x4ct
        0x52t
        0x43t
        0x50t
        0x51t
        0x52t
        0x47t
        0x52t
        0x47t
        0x3ft
        0x4at
        -0x2t
        0x3ft
        0x42t
        -0x2t
        0x51t
        0x46t
        0x4dt
        0x55t
        -0x2t
        0x41t
        0x3ft
        0x4at
        0x4at
        0x43t
        0x42t
        -0xdt
        -0xct
        0x2t
        0x3t
        0x1t
        -0x2t
        0x8t
        0x58t
        0x63t
        0x40t
        0x63t
        0x55t
        0x58t
        0x35t
        0x58t
        -0x8t
        -0x13t
        -0xct
        -0x4t
    .end array-data
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/InterstitialAdListener;)V
    .locals 2

    .line 62317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3E(Z)V

    .line 62318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gv;->A0E(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 62319
    return-void

    .line 62320
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A03(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 62321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A02:Lcom/facebook/ads/redexgen/X/6q;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6q;->A0F(Lcom/facebook/ads/RewardData;)V

    .line 62322
    return-void
.end method

.method public final A04(Lcom/facebook/ads/RewardedAdListener;)V
    .locals 1

    .line 62323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gv;->A0G(Lcom/facebook/ads/RewardedAdListener;)V

    .line 62324
    return-void
.end method

.method public final A05(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 5
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

    .local v4, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    const/16 v2, 0x3f

    const/16 v1, 0x1e

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xf

    const/4 v1, 0x7

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7f

    const/16 v1, 0x8

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62325
    if-nez p2, :cond_0

    .line 62326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3I()V

    .line 62327
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RE;->A02:Lcom/facebook/ads/redexgen/X/6q;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/6q;->A0E(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 62328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3G()V

    .line 62329
    return-void

    .line 62330
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3H()V

    goto :goto_0
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 62331
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RE;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 62332
    new-instance v0, Lcom/facebook/ads/redexgen/X/RF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RF;-><init>(Lcom/facebook/ads/redexgen/X/RE;)V

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 62333
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RE;->buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;
    .locals 1

    .line 62334
    new-instance v0, Lcom/facebook/ads/redexgen/X/RG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/RG;-><init>()V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x26

    const/16 v1, 0x19

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x78

    const/4 v1, 0x7

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62336
    return-void

    .line 62337
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A02:Lcom/facebook/ads/redexgen/X/6q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6q;->A08()V

    .line 62338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3M()V

    .line 62339
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 62340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A02:Lcom/facebook/ads/redexgen/X/6q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A07()V

    .line 62341
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 62342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A0A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 62343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A02:Lcom/facebook/ads/redexgen/X/6q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6q;->A0G()Z

    move-result v1

    .line 62344
    .local v0, "isInvalidated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->A5X(Z)V

    .line 62345
    return v1
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 62346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A02:Lcom/facebook/ads/redexgen/X/6q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6q;->A0H()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 2

    .line 62347
    sget-object v1, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A05(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 62348
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V
    .locals 0

    .line 62349
    check-cast p1, Lcom/facebook/ads/redexgen/X/RF;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RF;->A00()V

    .line 62350
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 6

    .line 62351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A01:Lcom/facebook/ads/redexgen/X/gv;

    .line 62353
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v5

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/InterstitialAd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    const/16 v1, 0x10

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 62354
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/X7;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x7d1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 62355
    invoke-interface {v5, v4, v0}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 62356
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62357
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RE;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/gv;->A0I(Ljava/lang/String;)V

    .line 62358
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RE;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/gv;->A0J(Ljava/lang/String;)V

    .line 62359
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x5d

    const/16 v1, 0x1b

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/4 v1, 0x7

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x87

    const/4 v1, 0x4

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3R()V

    .line 62361
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RE;->A02:Lcom/facebook/ads/redexgen/X/6q;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/InterstitialAd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/RG;-><init>()V

    .line 62362
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6q;->A0I(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z

    move-result v1

    .line 62363
    .local v0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->A3Q(Z)V

    .line 62364
    return v1
.end method

.method public final show(Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z
    .locals 2

    .line 62365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3R()V

    .line 62366
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RE;->A02:Lcom/facebook/ads/redexgen/X/6q;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/6q;->A0I(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z

    move-result v1

    .line 62367
    .local v0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->A3Q(Z)V

    .line 62368
    return v1
.end method
