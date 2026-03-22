.class final Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory$ErrorTextView;
    }
.end annotation


# instance fields
.field private final manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 7
    .line 8
    return-void
.end method

.method private static getErrorView(Landroid/content/Context;I)Lio/flutter/plugin/platform/PlatformView;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object p1, v1, v2

    .line 14
    .line 15
    const-string p1, "This ad may have not been loaded or has been disposed. Ad with the following id could not be found: %d."

    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-class v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory$1;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory$1;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory;->getErrorView(Landroid/content/Context;I)Lio/flutter/plugin/platform/PlatformView;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :cond_0
    check-cast p3, Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object p2, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p2, v0}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->adForId(I)Lio/flutter/plugins/googlemobileads/FlutterAd;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd;->getPlatformView()Lio/flutter/plugin/platform/PlatformView;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd;->getPlatformView()Lio/flutter/plugin/platform/PlatformView;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_2
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-static {p1, p2}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory;->getErrorView(Landroid/content/Context;I)Lio/flutter/plugin/platform/PlatformView;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method
