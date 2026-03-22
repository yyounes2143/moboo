.class public Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;
.source "Proguard"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public invoke(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1    # Landroid/webkit/GeolocationPermissions$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1, p2, p3, p4}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
