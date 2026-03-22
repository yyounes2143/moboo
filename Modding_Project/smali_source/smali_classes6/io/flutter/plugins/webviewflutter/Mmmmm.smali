.class public final synthetic Lio/flutter/plugins/webviewflutter/Mmmmm;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/JsResult;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/JsResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/Mmmmm;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/Mmmmm;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/JsResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/Mmmmm;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/Mmmmm;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/JsResult;

    .line 4
    .line 5
    check-cast p1, Lio/flutter/plugins/webviewflutter/ResultCompat;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/JsResult;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
