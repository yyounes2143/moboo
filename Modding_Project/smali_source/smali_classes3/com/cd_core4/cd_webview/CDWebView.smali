.class public final Lcom/cd_core4/cd_webview/CDWebView;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cd_core4/cd_webview/CDWebView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0008\u0005*\u0002NQ\u0018\u0000 T2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001TB;\u0008\u0017\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0013J\u000f\u0010\u001c\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0013J\u001f\u0010!\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J)\u0010(\u001a\u00020\'2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\u0008\u0010&\u001a\u0004\u0018\u00010%H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010+\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010.\u001a\u00020\u00112\u0006\u0010-\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00080\u0010\u0013J\u000f\u00101\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00081\u0010\u0013R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010?\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010@R\u0016\u0010D\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010F\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010>R$\u0010K\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020I0H\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010JR\u0014\u0010M\u001a\u00020\n8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010LR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010R\u00a8\u0006U"
    }
    d2 = {
        "Lcom/cd_core4/cd_webview/CDWebView;",
        "Lio/flutter/plugin/platform/PlatformView;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "Landroid/content/Context;",
        "context",
        "",
        "id",
        "",
        "",
        "",
        "args",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "messenger",
        "<init>",
        "(Landroid/content/Context;ILjava/util/Map;Lio/flutter/plugin/common/BinaryMessenger;)V",
        "",
        "Wwwwwwwwwwwwwwwwww",
        "()V",
        "Wwwwwwwwwwwwwwwww",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "flutterView",
        "onFlutterViewAttached",
        "(Landroid/view/View;)V",
        "onFlutterViewDetached",
        "dispose",
        "Lio/flutter/plugin/common/MethodCall;",
        "p0",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "p1",
        "onMethodCall",
        "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "",
        "onActivityResult",
        "(IILandroid/content/Intent;)Z",
        "visible",
        "Wwwwwwwwwwwwwwwwwwwww",
        "(Z)V",
        "result",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "(Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "Wwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwww",
        "Lcom/changdu/component/webviewcache/CDWebView;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/changdu/component/webviewcache/CDWebView;",
        "webView",
        "Lio/flutter/plugin/common/MethodChannel;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Lio/flutter/plugin/common/MethodChannel;",
        "methodChannel",
        "Lcom/cd_core4/cd_webview/CDWebViewJsBridge;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/cd_core4/cd_webview/CDWebViewJsBridge;",
        "cdWebViewJsBridge",
        "Z",
        "mHasShowedSslError",
        "Landroid/content/Context;",
        "mContext",
        "Wwwwwwwwwwwwwwwwwwww",
        "I",
        "mId",
        "Wwwwwwwwwwwwwwwwwww",
        "mErrorLoad",
        "Landroid/webkit/ValueCallback;",
        "",
        "Landroid/net/Uri;",
        "Landroid/webkit/ValueCallback;",
        "mFilePathCallback",
        "Ljava/lang/String;",
        "TAG",
        "com/cd_core4/cd_webview/CDWebView$mWebViewClient$1",
        "Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;",
        "mWebViewClient",
        "com/cd_core4/cd_webview/CDWebView$mWebChromeClient$1",
        "Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;",
        "mWebChromeClient",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCDWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDWebView.kt\ncom/cd_core4/cd_webview/CDWebView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,358:1\n1#2:359\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cd_core4/cd_webview/CDWebView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final Wwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwww:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebViewJsBridge;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cd_core4/cd_webview/CDWebView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cd_core4/cd_webview/CDWebView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cd_core4/cd_webview/CDWebView;->Companion:Lcom/cd_core4/cd_webview/CDWebView$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/Map;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/flutter/plugin/common/BinaryMessenger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lio/flutter/plugin/common/BinaryMessenger;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CDWebview"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;-><init>(Lcom/cd_core4/cd_webview/CDWebView;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;

    .line 14
    .line 15
    new-instance v1, Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;-><init>(Lcom/cd_core4/cd_webview/CDWebView;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;

    .line 21
    .line 22
    iput p2, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    new-instance v2, Lio/flutter/plugin/common/MethodChannel;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "com.cd_core4.cd_webView/webView_"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {v2, p4, p2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 47
    .line 48
    invoke-virtual {v2, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 52
    .line 53
    new-instance p2, Lcom/changdu/component/webviewcache/CDWebView;

    .line 54
    .line 55
    invoke-direct {p2, p1}, Lcom/changdu/component/webviewcache/CDWebView;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 59
    .line 60
    if-eqz p3, :cond_0

    .line 61
    .line 62
    const-string p1, "cache"

    .line 63
    .line 64
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    iget-object p2, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 71
    .line 72
    if-eqz p2, :cond_0

    .line 73
    .line 74
    check-cast p1, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p2, p1}, Lcom/changdu/component/webviewcache/CDWebView;->setEnableCustomCache(Z)V

    .line 81
    .line 82
    .line 83
    :cond_0
    if-eqz p3, :cond_1

    .line 84
    .line 85
    const-string p1, "cacheBlackList"

    .line 86
    .line 87
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    iget-object p2, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 94
    .line 95
    if-eqz p2, :cond_1

    .line 96
    .line 97
    check-cast p1, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Lcom/changdu/component/webviewcache/CDWebView;->setCacheBlackList(Ljava/util/ArrayList;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    if-eqz p3, :cond_2

    .line 103
    .line 104
    const-string p1, "cacheSize"

    .line 105
    .line 106
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    iget-object p2, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 113
    .line 114
    if-eqz p2, :cond_2

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    invoke-virtual {p2, v2, v3}, Lcom/changdu/component/webviewcache/CDWebView;->setCacheSize(J)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 128
    .line 129
    if-eqz p1, :cond_3

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lcom/changdu/component/webviewcache/CDWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 135
    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    if-eqz p3, :cond_5

    .line 142
    .line 143
    const-string p1, "url"

    .line 144
    .line 145
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    iget-object p2, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 152
    .line 153
    if-eqz p2, :cond_5

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p2, p1}, Lcom/changdu/component/webviewcache/CDWebView;->loadUrl(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    iget-object v1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 166
    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    new-instance v0, Lcom/cd_core4/cd_webview/CDWebViewJsBridge;

    .line 170
    .line 171
    iget-object v2, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 172
    .line 173
    const/4 v4, 0x4

    .line 174
    const/4 v5, 0x0

    .line 175
    const/4 v3, 0x0

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/cd_core4/cd_webview/CDWebViewJsBridge;-><init>(Lio/flutter/plugin/common/MethodChannel;Lcom/changdu/component/webviewcache/CDWebView;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 177
    .line 178
    .line 179
    iput-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebViewJsBridge;

    .line 180
    .line 181
    :cond_6
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 182
    .line 183
    if-eqz p1, :cond_7

    .line 184
    .line 185
    iget-object p2, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebViewJsBridge;

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/CDWebView;->setCdJsBridgeListener(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;)V

    .line 188
    .line 189
    .line 190
    :cond_7
    return-void
.end method

.method private final Wwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwww(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    return-void

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final Wwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwww(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    return-void

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwww:Landroid/webkit/ValueCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_webview/CDWebView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/CDWebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwww()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Companion:Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v2, "android.intent.action.PICK"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 17
    .line 18
    const-string v3, "image/*"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const/16 v2, 0xc

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v1, v2, v3}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/changdu/component/webviewcache/CDWebView;->notifyVisible(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/CDWebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Companion:Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;

    .line 2
    .line 3
    iget v1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/changdu/component/webviewcache/CDWebView;->setCdJsBridgeListener(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_webview/CDWebViewJsBridge;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cd_core4/cd_webview/CDWebViewJsBridge;->Wwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const-string v1, "cdbridge"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/CDWebView;->release()V

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/CDWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_4
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p2, 0x1

    .line 2
    sget-object v0, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Companion:Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    const/16 v3, 0xc

    .line 12
    .line 13
    if-ne p1, v3, :cond_6

    .line 14
    .line 15
    if-eqz p3, :cond_4

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x1d

    .line 26
    .line 27
    if-lt p1, v3, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwww:Landroid/webkit/ValueCallback;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    new-array v1, p2, [Landroid/net/Uri;

    .line 38
    .line 39
    aput-object p3, v1, v2

    .line 40
    .line 41
    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    sget-object v3, Lcom/cd_core4/cd_webview/PhotoUriUtil;->INSTANCE:Lcom/cd_core4/cd_webview/PhotoUriUtil;

    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {v3, v1, p3}, Lcom/cd_core4/cd_webview/PhotoUriUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    const/16 v3, 0x18

    .line 62
    .line 63
    if-lt p1, v3, :cond_1

    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, ".fileProvider"

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance v3, Ljava/io/File;

    .line 87
    .line 88
    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, p1, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    new-instance p1, Ljava/io/File;

    .line 97
    .line 98
    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_0
    iget-object p3, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwww:Landroid/webkit/ValueCallback;

    .line 106
    .line 107
    if-eqz p3, :cond_2

    .line 108
    .line 109
    new-array v1, p2, [Landroid/net/Uri;

    .line 110
    .line 111
    aput-object p1, v1, v2

    .line 112
    .line 113
    invoke-interface {p3, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    :cond_3
    :goto_1
    iget p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwww:I

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    .line 129
    sget-object p1, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Companion:Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;

    .line 130
    .line 131
    iget p3, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwww:I

    .line 132
    .line 133
    invoke-virtual {p1, p3}, Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :catchall_1
    move-exception p1

    .line 138
    sget-object p2, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Companion:Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;

    .line 139
    .line 140
    iget p3, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwww:I

    .line 141
    .line 142
    invoke-virtual {p2, p3}, Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_4
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwww:Landroid/webkit/ValueCallback;

    .line 147
    .line 148
    if-eqz p1, :cond_5

    .line 149
    .line 150
    new-array p3, v2, [Landroid/net/Uri;

    .line 151
    .line 152
    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    :goto_3
    return p2

    .line 156
    :cond_6
    return v2
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onFlutterViewAttached(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onFlutterViewDetached()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onInputConnectionLocked()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onInputConnectionUnlocked()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "runJavaScript"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "javascript:"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "methodName"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x28

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, "arguments"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v0, 0x29

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 63
    .line 64
    if-eqz v0, :cond_8

    .line 65
    .line 66
    new-instance v1, LWwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 67
    .line 68
    invoke-direct {v1, p2}, LWwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 79
    .line 80
    const-string v1, "reload"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    iget-object p1, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 89
    .line 90
    if-eqz p1, :cond_8

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 97
    .line 98
    const-string v1, "loadUrl"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    iget-object p2, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 107
    .line 108
    if-eqz p2, :cond_8

    .line 109
    .line 110
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p2, p1}, Lcom/changdu/component/webviewcache/CDWebView;->loadUrl(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_2
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 122
    .line 123
    const-string v1, "onPause"

    .line 124
    .line 125
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    invoke-direct {p0}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwww()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_3
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 136
    .line 137
    const-string v1, "onResume"

    .line 138
    .line 139
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    invoke-direct {p0}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwww()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_4
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 150
    .line 151
    const-string v1, "notifyVisible"

    .line 152
    .line 153
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    iget-object p2, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 160
    .line 161
    invoke-static {p2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p1, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwww(Z)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_5
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 177
    .line 178
    const-string v1, "canPop"

    .line 179
    .line 180
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    invoke-virtual {p0, p2}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_6
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 191
    .line 192
    const-string v1, "pop"

    .line 193
    .line 194
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_7

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwww()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_7
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 205
    .line 206
    const-string v1, "invokeJavaScriptStr"

    .line 207
    .line 208
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    if-eqz v0, :cond_8

    .line 213
    .line 214
    :try_start_1
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast p1, Ljava/lang/String;

    .line 217
    .line 218
    iget-object v0, p0, Lcom/cd_core4/cd_webview/CDWebView;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/webviewcache/CDWebView;

    .line 219
    .line 220
    if-eqz v0, :cond_8

    .line 221
    .line 222
    new-instance v1, LWwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 223
    .line 224
    invoke-direct {v1, p2}, LWwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    .line 233
    .line 234
    :catchall_0
    :cond_8
    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
