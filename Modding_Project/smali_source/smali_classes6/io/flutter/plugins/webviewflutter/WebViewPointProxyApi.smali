.class public Lio/flutter/plugins/webviewflutter/WebViewPointProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;
.source "Proguard"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public x(Lio/flutter/plugins/webviewflutter/WebViewPoint;)J
    .locals 2
    .param p1    # Lio/flutter/plugins/webviewflutter/WebViewPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/WebViewPoint;->getX()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public y(Lio/flutter/plugins/webviewflutter/WebViewPoint;)J
    .locals 2
    .param p1    # Lio/flutter/plugins/webviewflutter/WebViewPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/WebViewPoint;->getY()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
