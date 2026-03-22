.class public Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


# instance fields
.field private final ad:Lio/flutter/plugins/googlemobileads/FlutterAd;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;Lio/flutter/plugins/googlemobileads/FlutterAd;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/googlemobileads/FlutterAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;->ad:Lio/flutter/plugins/googlemobileads/FlutterAd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V
    .locals 5

    .line 1
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterAdValue;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/plugins/googlemobileads/FlutterAdValue;-><init>(ILjava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 19
    .line 20
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;->ad:Lio/flutter/plugins/googlemobileads/FlutterAd;

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onPaidEvent(Lio/flutter/plugins/googlemobileads/FlutterAd;Lio/flutter/plugins/googlemobileads/FlutterAdValue;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
