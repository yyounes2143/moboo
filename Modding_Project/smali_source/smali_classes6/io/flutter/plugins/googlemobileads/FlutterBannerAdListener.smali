.class Lio/flutter/plugins/googlemobileads/FlutterBannerAdListener;
.super Lio/flutter/plugins/googlemobileads/FlutterAdListener;
.source "Proguard"


# instance fields
.field final adLoadedListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/flutter/plugins/googlemobileads/FlutterAdLoadedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Lio/flutter/plugins/googlemobileads/FlutterAdLoadedListener;)V
    .locals 0
    .param p2    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/FlutterAdListener;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAdListener;->adLoadedListenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAdListener;->adLoadedListenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAdListener;->adLoadedListenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/flutter/plugins/googlemobileads/FlutterAdLoadedListener;

    .line 16
    .line 17
    invoke-interface {v0}, Lio/flutter/plugins/googlemobileads/FlutterAdLoadedListener;->onAdLoaded()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
