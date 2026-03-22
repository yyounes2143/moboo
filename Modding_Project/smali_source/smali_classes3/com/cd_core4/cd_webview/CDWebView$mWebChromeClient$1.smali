.class public final Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;
.super Landroid/webkit/WebChromeClient;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cd_core4/cd_webview/CDWebView;-><init>(Landroid/content/Context;ILjava/util/Map;Lio/flutter/plugin/common/BinaryMessenger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000A\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J2\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00052\u0014\u0010\u000e\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "com/cd_core4/cd_webview/CDWebView$mWebChromeClient$1",
        "Landroid/webkit/WebChromeClient;",
        "onReceivedTitle",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "title",
        "",
        "onProgressChanged",
        "newProgress",
        "",
        "onShowFileChooser",
        "",
        "webView",
        "filePathCallback",
        "Landroid/webkit/ValueCallback;",
        "",
        "Landroid/net/Uri;",
        "fileChooserParams",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
        "cd_webview_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;


# direct methods
.method public constructor <init>(Lcom/cd_core4/cd_webview/CDWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;Landroid/webkit/ValueCallback;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Companion:Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget-object p3, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 15
    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method
