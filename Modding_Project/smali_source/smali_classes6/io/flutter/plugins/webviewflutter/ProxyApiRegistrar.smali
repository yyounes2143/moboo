.class public Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
.super Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
.source "Proguard"


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final flutterAssetManager:Lio/flutter/plugins/webviewflutter/FlutterAssetManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/webviewflutter/FlutterAssetManager;)V
    .locals 0
    .param p1    # Lio/flutter/plugin/common/BinaryMessenger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/webviewflutter/FlutterAssetManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->flutterAssetManager:Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createUnknownEnumException(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, " doesn\'t represent a native value."

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public createUnsupportedVersionMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " requires "

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, "."

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlutterAssetManager()Lio/flutter/plugins/webviewflutter/FlutterAssetManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->flutterAssetManager:Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPigeonApiAndroidMessage()Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/MessageProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/MessageProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiCertificate()Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/CertificateProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/CertificateProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiClientCertRequest()Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/ClientCertRequestProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/ClientCertRequestProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiConsoleMessage()Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/ConsoleMessageProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/ConsoleMessageProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiCookieManager()Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/CookieManagerProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/CookieManagerProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiCustomViewCallback()Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/CustomViewCallbackProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/CustomViewCallbackProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiDownloadListener()Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/DownloadListenerProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/DownloadListenerProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiFileChooserParams()Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/FileChooserParamsProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/FileChooserParamsProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiFlutterAssetManager()Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiGeolocationPermissionsCallback()Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiHttpAuthHandler()Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiJavaScriptChannel()Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiPermissionRequest()Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/PermissionRequestProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/PermissionRequestProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiSslCertificate()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslCertificateProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/SslCertificateProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiSslCertificateDName()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslCertificateDNameProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/SslCertificateDNameProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiSslError()Lio/flutter/plugins/webviewflutter/PigeonApiSslError;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslErrorProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/SslErrorProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiSslErrorHandler()Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslErrorHandlerProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/SslErrorHandlerProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiView()Lio/flutter/plugins/webviewflutter/PigeonApiView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/ViewProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/ViewProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebChromeClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebResourceError()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebResourceErrorProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebResourceErrorProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebResourceErrorCompat()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebResourceErrorCompatProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebResourceErrorCompatProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebResourceRequest()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebResourceRequestProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebResourceRequestProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebResourceResponse()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebResourceResponseProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebResourceResponseProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebSettings()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebSettingsProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebSettingsProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebSettingsCompat()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebSettingsCompatProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebSettingsCompatProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebStorage()Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebStorageProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebStorageProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebView()Lio/flutter/plugins/webviewflutter/PigeonApiWebView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebViewClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebViewFeature()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewFeatureProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebViewFeatureProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPigeonApiWebViewPoint()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewPointProxyApi;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebViewPointProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->context:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public sdkIsAtLeast(I)Z
    .locals 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        parameter = 0x0
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    if-lt v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method
