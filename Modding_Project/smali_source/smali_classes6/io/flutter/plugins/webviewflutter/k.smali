.class public final synthetic Lio/flutter/plugins/webviewflutter/k;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Landroid/net/http/SslError;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/SslErrorHandler;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/k;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/k;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/k;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/SslErrorHandler;

    .line 9
    .line 10
    iput-object p4, p0, Lio/flutter/plugins/webviewflutter/k;->Wwwwwwwwwwwwwwwwwwwwww:Landroid/net/http/SslError;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/k;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/k;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/k;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/SslErrorHandler;

    .line 6
    .line 7
    iget-object v3, p0, Lio/flutter/plugins/webviewflutter/k;->Wwwwwwwwwwwwwwwwwwwwww:Landroid/net/http/SslError;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
