.class Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "Proguard"


# instance fields
.field protected final adId:I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;I)V
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 5
    .line 6
    iput p2, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->adId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->adId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdClicked(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->adId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdDismissedFullScreenContent(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->adId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onFailedToShowFullScreenContent(ILcom/google/android/gms/ads/AdError;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->adId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdImpression(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;->adId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdShowedFullScreenContent(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
