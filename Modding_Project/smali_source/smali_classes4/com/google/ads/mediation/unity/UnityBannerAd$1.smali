.class Lcom/google/ads/mediation/unity/UnityBannerAd$1;
.super Lcom/unity3d/services/banners/BannerView$Listener;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/unity/UnityBannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/unity/UnityBannerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/unity3d/services/banners/BannerView$Listener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private logBannerMessage(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/unity3d/services/banners/BannerView;->getPlacementId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object p2, v0, v1

    .line 12
    .line 13
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->ADAPTER_ERROR_DOMAIN:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public onBannerClick(Lcom/unity3d/services/banners/BannerView;)V
    .locals 1

    .line 1
    const-string v0, "Unity Ads banner ad was clicked for placement ID: %s"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->logBannerMessage(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->CLICKED:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->OPENED:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onBannerFailedToLoad(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->getMediationErrorCode(Lcom/unity3d/services/banners/BannerErrorInfo;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p2, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorMessage:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1, v0, p2}, Lcom/google/ads/mediation/unity/UnityBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/ads/mediation/unity/UnityBannerAd;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onBannerLeftApplication(Lcom/unity3d/services/banners/BannerView;)V
    .locals 1

    .line 1
    const-string v0, "Unity Ads banner ad left application for placement ID: %s"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->logBannerMessage(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->LEFT_APPLICATION:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onBannerLoaded(Lcom/unity3d/services/banners/BannerView;)V
    .locals 1

    .line 1
    const-string v0, "Unity Ads finished loading banner ad for placement ID: %s"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->logBannerMessage(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->LOADED:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onBannerShown(Lcom/unity3d/services/banners/BannerView;)V
    .locals 1

    .line 1
    const-string v0, "Unity Ads banner ad was shown for placement ID: %s"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->logBannerMessage(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->IMPRESSION:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
