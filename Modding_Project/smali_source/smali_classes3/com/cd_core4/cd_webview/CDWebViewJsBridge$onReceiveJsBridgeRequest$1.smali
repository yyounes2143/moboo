.class public final Lcom/cd_core4/cd_webview/CDWebViewJsBridge$onReceiveJsBridgeRequest$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cd_core4/cd_webview/CDWebViewJsBridge;->onReceiveJsBridgeRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J$\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/cd_core4/cd_webview/CDWebViewJsBridge$onReceiveJsBridgeRequest$1",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "success",
        "",
        "p0",
        "",
        "error",
        "",
        "p1",
        "p2",
        "notImplemented",
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
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebViewJsBridge;


# direct methods
.method public constructor <init>(Lcom/cd_core4/cd_webview/CDWebViewJsBridge;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cd_core4/cd_webview/CDWebViewJsBridge$onReceiveJsBridgeRequest$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebViewJsBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cd_core4/cd_webview/CDWebViewJsBridge$onReceiveJsBridgeRequest$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notImplemented()V
    .locals 0

    .line 1
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/HashMap;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebViewJsBridge$onReceiveJsBridgeRequest$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebViewJsBridge;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/cd_core4/cd_webview/CDWebViewJsBridge;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebViewJsBridge;)Lcom/changdu/component/webviewcache/CDWebView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/cd_core4/cd_webview/CDWebViewJsBridge$onReceiveJsBridgeRequest$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/changdu/component/webviewcache/CDWebView;->responseBizJavaScript(Ljava/util/Map;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
