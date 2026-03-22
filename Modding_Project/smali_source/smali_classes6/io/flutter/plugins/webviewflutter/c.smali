.class public final synthetic Lio/flutter/plugins/webviewflutter/c;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/ValueCallback;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;ZLandroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/c;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    .line 5
    .line 6
    iput-boolean p2, p0, Lio/flutter/plugins/webviewflutter/c;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/c;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/ValueCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/c;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    .line 2
    .line 3
    iget-boolean v1, p0, Lio/flutter/plugins/webviewflutter/c;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/c;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/ValueCallback;

    .line 6
    .line 7
    check-cast p1, Lio/flutter/plugins/webviewflutter/ResultCompat;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->Wwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;ZLandroid/webkit/ValueCallback;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
