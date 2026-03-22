.class public Lio/flutter/plugins/webviewflutter/WebSettingsCompatProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;
.source "Proguard"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public setPaymentRequestEnabled(Landroid/webkit/WebSettings;Z)V
    .locals 0
    .param p1    # Landroid/webkit/WebSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RequiresFeature"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Landroidx/webkit/WebSettingsCompat;->setPaymentRequestEnabled(Landroid/webkit/WebSettings;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
