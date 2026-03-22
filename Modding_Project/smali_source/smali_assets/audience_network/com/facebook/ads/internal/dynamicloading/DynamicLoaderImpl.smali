.class public Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;
.implements Lcom/facebook/ads/internal/dynamicloading/RemoteRenderingApi;


# static fields
.field public static A00:Lcom/facebook/ads/internal/api/AdSettingsApi;

.field public static A01:Lcom/facebook/ads/internal/api/AudienceNetworkAdsApi;

.field public static A02:Lcom/facebook/ads/internal/api/NativeAdViewApi;

.field public static A03:Lcom/facebook/ads/internal/api/NativeBannerAdViewApi;

.field public static A04:Lcom/facebook/ads/redexgen/X/R9;

.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/internal/api/InitApi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1823
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FC7PnIQgfKJQfBdQKCurjH6JKIFxjroV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ez"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "t7pjhhQGIazlhmf4UkwJSh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Iyhtqk6gC8uyo8Dul94yaDEfv0PrNxAT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5egoyUR4tSKxNoVVXreZdHvR7BDPW4Oi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IYlCvOKkAZQkBJEI1e2UxVPIL3gdF2Y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0QNvsKlwTsAv0tvLZz9yZ17i9BLNPSLj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RauEdYPLg0wTIRL3lDclFm017FzJm5su"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A05:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/RD;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A06:Lcom/facebook/ads/internal/api/InitApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBidderTokenProviderApi()Lcom/facebook/ads/redexgen/X/R9;
    .locals 1

    .line 65698
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A04:Lcom/facebook/ads/redexgen/X/R9;

    if-nez v0, :cond_0

    .line 65699
    new-instance v0, Lcom/facebook/ads/redexgen/X/R9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/R9;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A04:Lcom/facebook/ads/redexgen/X/R9;

    .line 65700
    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A04:Lcom/facebook/ads/redexgen/X/R9;

    return-object v0
.end method


# virtual methods
.method public createAdOptionsView(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;ILcom/facebook/ads/AdOptionsView;)Lcom/facebook/ads/internal/api/AdOptionsViewApi;
    .locals 7

    .line 65648
    new-instance v0, Lcom/facebook/ads/redexgen/X/fx;

    move-object v6, p6

    move v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/fx;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;ILcom/facebook/ads/AdOptionsView;)V

    return-object v0
.end method

.method public createAdOptionsView(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView;)Lcom/facebook/ads/internal/api/AdOptionsViewApi;
    .locals 1

    .line 65649
    new-instance v0, Lcom/facebook/ads/redexgen/X/fx;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/fx;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView;)V

    return-object v0
.end method

.method public createAdSettingsApi()Lcom/facebook/ads/internal/api/AdSettingsApi;
    .locals 1

    .line 65650
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A00:Lcom/facebook/ads/internal/api/AdSettingsApi;

    if-nez v0, :cond_0

    .line 65651
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qy;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Qy;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A00:Lcom/facebook/ads/internal/api/AdSettingsApi;

    .line 65652
    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A00:Lcom/facebook/ads/internal/api/AdSettingsApi;

    return-object v0
.end method

.method public createAdSizeApi(I)Lcom/facebook/ads/internal/api/AdSizeApi;
    .locals 2

    .line 65653
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WV;->A02(I)Lcom/facebook/ads/redexgen/X/V4;

    move-result-object v1

    .line 65654
    .local v0, "adSizeInternal":Lcom/facebook/ads/redexgen/X/V4;
    new-instance v0, Lcom/facebook/ads/redexgen/X/TH;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/TH;-><init>(Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;Lcom/facebook/ads/redexgen/X/V4;)V

    return-object v0
.end method

.method public createAdViewApi(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/api/AdViewApi;
    .locals 7

    .line 65655
    new-instance v1, Lcom/facebook/ads/redexgen/X/Qz;

    move-object v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Qz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V

    const-class v0, Lcom/facebook/ads/internal/api/AdViewApi;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qw;->A00(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/api/AdViewApi;

    return-object v0
.end method

.method public createAdViewApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/api/AdViewApi;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65656
    :try_start_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Qz;

    move-object v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Qz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V

    const-class v0, Lcom/facebook/ads/internal/api/AdViewApi;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qw;->A00(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/api/AdViewApi;

    return-object v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/V2; {:try_start_0 .. :try_end_0} :catch_0

    .line 65657
    :catch_0
    move-exception v0

    .line 65658
    .local v0, "e":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A01()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createAudienceNetworkActivity(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;)Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;
    .locals 2

    .line 65659
    new-instance v1, Lcom/facebook/ads/redexgen/X/R0;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/R0;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/R1;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/R1;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;Lcom/facebook/ads/redexgen/X/R0;)V

    return-object v0
.end method

.method public createAudienceNetworkAdsApi()Lcom/facebook/ads/internal/api/AudienceNetworkAdsApi;
    .locals 4

    .line 65660
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkAdsApi;

    if-nez v0, :cond_0

    .line 65661
    new-instance v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/R3;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkAdsApi;

    .line 65662
    :cond_0
    sget-object v3, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkAdsApi;

    sget-object v1, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A05:[Ljava/lang/String;

    const-string v1, "WLYy1k58X1wQ2fFP1Kpc3q8pOUGU5mJB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3
.end method

.method public createAudienceNetworkExportedActivityApi(Landroid/app/Activity;)Lcom/facebook/ads/internal/api/AudienceNetworkExportedActivityApi;
    .locals 1

    .line 65663
    new-instance v0, Lcom/facebook/ads/redexgen/X/UL;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/UL;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createAudienceNetworkRemoteService(Landroid/app/Service;)Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi;
    .locals 1

    .line 65664
    new-instance v0, Lcom/facebook/ads/redexgen/X/UM;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/UM;-><init>(Landroid/app/Service;)V

    return-object v0
.end method

.method public createBidderTokenProviderApi()Lcom/facebook/ads/internal/api/BidderTokenProviderApi;
    .locals 1

    .line 65665
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->getBidderTokenProviderApi()Lcom/facebook/ads/redexgen/X/R9;

    move-result-object v0

    return-object v0
.end method

.method public createDefaultMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/DefaultMediaViewVideoRendererApi;
    .locals 1

    .line 65666
    new-instance v0, Lcom/facebook/ads/redexgen/X/TD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/TD;-><init>()V

    return-object v0
.end method

.method public createInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/internal/api/InterstitialAdApi;
    .locals 2

    .line 65667
    new-instance v1, Lcom/facebook/ads/redexgen/X/RE;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/RE;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/InterstitialAd;)V

    const-class v0, Lcom/facebook/ads/internal/api/InterstitialAdApi;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qw;->A00(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/api/InterstitialAdApi;

    return-object v0
.end method

.method public createMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;
    .locals 1

    .line 65668
    new-instance v0, Lcom/facebook/ads/redexgen/X/fh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/fh;-><init>()V

    return-object v0
.end method

.method public createMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;
    .locals 1

    .line 65669
    new-instance v0, Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/RH;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createNativeAdApi(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdApi;
    .locals 1

    .line 65670
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->createNativeAdApi(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createNativeAdApi(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdApi;
    .locals 1

    .line 65671
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->createNativeAdApi(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v0

    return-object v0
.end method

.method public createNativeAdApi(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/RK;
    .locals 1

    .line 65672
    new-instance v0, Lcom/facebook/ads/redexgen/X/RK;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/RK;-><init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    return-object v0
.end method

.method public createNativeAdApi(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/RK;
    .locals 1

    .line 65673
    new-instance v0, Lcom/facebook/ads/redexgen/X/RK;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/RK;-><init>(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    return-object v0
.end method

.method public createNativeAdBaseApi(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/internal/api/NativeAdBaseApi;
    .locals 3

    .line 65674
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->A0K()Lcom/facebook/ads/redexgen/X/S3;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qc;

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/Qc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Uo;Z)V

    .line 65675
    return-object v0
.end method

.method public createNativeAdBaseApi(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdBaseApi;
    .locals 1

    .line 65676
    check-cast p1, Lcom/facebook/ads/redexgen/X/Qc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qc;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Qc;-><init>(Lcom/facebook/ads/redexgen/X/Qc;)V

    return-object v0
.end method

.method public createNativeAdBaseFromBidPayload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65677
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Qc;->A0A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/V2; {:try_start_0 .. :try_end_0} :catch_0

    .line 65678
    :catch_0
    move-exception v0

    .line 65679
    .local v0, "e":Lcom/facebook/ads/redexgen/X/V2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V2;->A01()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createNativeAdImageApi(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/api/NativeAdImageApi;
    .locals 1

    .line 65680
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    return-object v0
.end method

.method public createNativeAdLayoutApi()Lcom/facebook/ads/internal/api/NativeAdLayoutApi;
    .locals 1

    .line 65681
    new-instance v0, Lcom/facebook/ads/redexgen/X/fg;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/fg;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createNativeAdRatingApi(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/api/NativeAdRatingApi;
    .locals 1

    .line 65682
    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->createNativeAdRatingApi(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Uq;

    move-result-object v0

    return-object v0
.end method

.method public createNativeAdRatingApi(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Uq;
    .locals 1

    .line 65683
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Uq;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Uq;

    move-result-object v0

    return-object v0
.end method

.method public createNativeAdScrollViewApi(Lcom/facebook/ads/NativeAdScrollView;Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;ILcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)Lcom/facebook/ads/internal/api/NativeAdScrollViewApi;
    .locals 9

    .line 65684
    new-instance v0, Lcom/facebook/ads/redexgen/X/RL;

    move/from16 v8, p8

    move-object/from16 v7, p7

    move-object v6, p6

    move v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/RL;-><init>(Lcom/facebook/ads/NativeAdScrollView;Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;ILcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-object v0
.end method

.method public createNativeAdViewApi()Lcom/facebook/ads/internal/api/NativeAdViewApi;
    .locals 1

    .line 65685
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A02:Lcom/facebook/ads/internal/api/NativeAdViewApi;

    if-nez v0, :cond_0

    .line 65686
    new-instance v0, Lcom/facebook/ads/redexgen/X/RM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/RM;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A02:Lcom/facebook/ads/internal/api/NativeAdViewApi;

    .line 65687
    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A02:Lcom/facebook/ads/internal/api/NativeAdViewApi;

    return-object v0
.end method

.method public createNativeAdViewAttributesApi()Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;
    .locals 1

    .line 65688
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ur;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ur;-><init>()V

    return-object v0
.end method

.method public createNativeAdViewTypeApi(I)Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;
    .locals 1

    .line 65689
    new-instance v0, Lcom/facebook/ads/redexgen/X/RN;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/RN;-><init>(I)V

    return-object v0
.end method

.method public createNativeAdsManagerApi(Landroid/content/Context;Ljava/lang/String;I)Lcom/facebook/ads/internal/api/NativeAdsManagerApi;
    .locals 2

    .line 65690
    new-instance v1, Lcom/facebook/ads/redexgen/X/RO;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/RO;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qw;->A00(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    return-object v0
.end method

.method public createNativeBannerAdApi(Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeBannerAdApi;
    .locals 1

    .line 65691
    new-instance v0, Lcom/facebook/ads/redexgen/X/RS;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/RS;-><init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    return-object v0
.end method

.method public createNativeBannerAdViewApi()Lcom/facebook/ads/internal/api/NativeBannerAdViewApi;
    .locals 1

    .line 65692
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A03:Lcom/facebook/ads/internal/api/NativeBannerAdViewApi;

    if-nez v0, :cond_0

    .line 65693
    new-instance v0, Lcom/facebook/ads/redexgen/X/RT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/RT;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A03:Lcom/facebook/ads/internal/api/NativeBannerAdViewApi;

    .line 65694
    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A03:Lcom/facebook/ads/internal/api/NativeBannerAdViewApi;

    return-object v0
.end method

.method public createNativeComponentTagApi()Lcom/facebook/ads/internal/api/NativeComponentTagApi;
    .locals 1

    .line 65695
    new-instance v0, Lcom/facebook/ads/redexgen/X/RU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/RU;-><init>()V

    return-object v0
.end method

.method public createRewardedInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedInterstitialAd;)Lcom/facebook/ads/internal/api/RewardedInterstitialAdApi;
    .locals 2

    .line 65696
    new-instance v1, Lcom/facebook/ads/redexgen/X/RV;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/RV;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedInterstitialAd;)V

    const-class v0, Lcom/facebook/ads/internal/api/RewardedInterstitialAdApi;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qw;->A00(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/api/RewardedInterstitialAdApi;

    return-object v0
.end method

.method public createRewardedVideoAd(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/internal/api/RewardedVideoAdApi;
    .locals 2

    .line 65697
    new-instance v1, Lcom/facebook/ads/redexgen/X/RZ;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/RZ;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/Ad;)V

    const-class v0, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qw;->A00(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    return-object v0
.end method

.method public getInitApi()Lcom/facebook/ads/internal/api/InitApi;
    .locals 1

    .line 65701
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->A06:Lcom/facebook/ads/internal/api/InitApi;

    return-object v0
.end method

.method public maybeInitInternally(Landroid/content/Context;)V
    .locals 1

    .line 65702
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TK;->A0A(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 65703
    return-void
.end method
