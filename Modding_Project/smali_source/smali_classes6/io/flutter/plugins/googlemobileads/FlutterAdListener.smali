.class Lio/flutter/plugins/googlemobileads/FlutterAdListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "Proguard"


# instance fields
.field protected final adId:I

.field protected final manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;)V
    .locals 0
    .param p2    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->adId:I

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->adId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdClicked(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->adId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdClosed(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->adId:I

    .line 4
    .line 5
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;-><init>(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdFailedToLoad(ILio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->adId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdImpression(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdListener;->adId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdOpened(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
