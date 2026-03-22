.class public final Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;
.super Landroid/webkit/WebViewClient;
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
        "\u0000K\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J&\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J&\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J$\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0019H\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "com/cd_core4/cd_webview/CDWebView$mWebViewClient$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "shouldOverrideUrlLoading",
        "",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "onReceivedError",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "onReceivedHttpError",
        "errorResponse",
        "Landroid/webkit/WebResourceResponse;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "onReceivedSslError",
        "handler",
        "Landroid/webkit/SslErrorHandler;",
        "Landroid/net/http/SslError;",
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
    iput-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p3, v0, :cond_1

    .line 7
    .line 8
    const/4 p3, 0x4

    .line 9
    if-ne p2, p3, :cond_1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Lio/flutter/plugin/common/MethodChannel;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p2, "webViewDidFail"

    .line 26
    .line 27
    const-string v0, "load failed"

    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-static {p1, p2}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Lio/flutter/plugin/common/MethodChannel;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    const-string p2, "webViewDidFinish"

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    invoke-static {p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    invoke-static {v0}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;Z)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 32
    .line 33
    const/4 p3, 0x1

    .line 34
    invoke-static {p1, p3}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;Z)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 38
    .line 39
    iget-object p3, p0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView;

    .line 40
    .line 41
    invoke-static {p3}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    sget v0, Lcom/cd_core4/cd_webview/R$style;->AlertDialogTheme:I

    .line 46
    .line 47
    invoke-direct {p1, p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    const-string p3, "SSL Certificate Failed Verification"

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 53
    .line 54
    .line 55
    const-string p3, "Continue"

    .line 56
    .line 57
    new-instance v0, LWwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 58
    .line 59
    invoke-direct {v0, p2}, LWwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    .line 64
    .line 65
    const-string p3, "Cancel"

    .line 66
    .line 67
    new-instance v0, LWwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 68
    .line 69
    invoke-direct {v0, p2}, LWwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    .line 74
    .line 75
    new-instance p3, LWwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 76
    .line 77
    invoke-direct {p3, p2}, LWwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
