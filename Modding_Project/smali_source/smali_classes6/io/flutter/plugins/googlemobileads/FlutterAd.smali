.class abstract Lio/flutter/plugins/googlemobileads/FlutterAd;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;,
        Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;,
        Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;,
        Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;,
        Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterOverlayAd;
    }
.end annotation


# instance fields
.field protected final adId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public getPlatformView()Lio/flutter/plugin/platform/PlatformView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract load()V
.end method
