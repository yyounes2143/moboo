.class public Lio/flutter/plugins/webviewflutter/CustomViewCallbackProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;
.source "Proguard"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCustomViewHidden(Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1    # Landroid/webkit/WebChromeClient$CustomViewCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
