.class public Lcom/changdu/component/webviewcache/CDWebView;
.super Landroid/webkit/WebView;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/webviewcache/CDWebView$Companion;,
        Lcom/changdu/component/webviewcache/CDWebView$WithHtmlMimeTypeFilter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 O2\u00020\u0001:\u0002OPB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0004\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ+\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00172\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001bH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u0011\u00a2\u0006\u0004\u0008 \u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010&\u001a\u00020\u00112\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'J%\u0010+\u001a\u00020\u00112\u0016\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u00170(j\u0008\u0012\u0004\u0012\u00020\u0017`)\u00a2\u0006\u0004\u0008+\u0010,J%\u0010-\u001a\u00020\u00112\u0016\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u00170(j\u0008\u0012\u0004\u0012\u00020\u0017`)\u00a2\u0006\u0004\u0008-\u0010,J\u0015\u00100\u001a\u00020\u00112\u0006\u0010/\u001a\u00020.\u00a2\u0006\u0004\u00080\u00101J\r\u00103\u001a\u000202\u00a2\u0006\u0004\u00083\u00104J\u0015\u00106\u001a\u00020\u00112\u0006\u00105\u001a\u00020\u0014\u00a2\u0006\u0004\u00086\u0010#J\r\u00107\u001a\u00020\u0014\u00a2\u0006\u0004\u00087\u0010\u0016J+\u0010<\u001a\u00020\u00112\u0006\u00108\u001a\u00020\u00172\u0012\u0010;\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020:09\"\u00020:H\u0007\u00a2\u0006\u0004\u0008<\u0010=J)\u0010B\u001a\u00020\u00112\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020:0>2\u0006\u0010A\u001a\u00020@\u00a2\u0006\u0004\u0008B\u0010CJ\u0015\u0010E\u001a\u00020\u00112\u0006\u0010D\u001a\u00020\u0014\u00a2\u0006\u0004\u0008E\u0010#J\r\u0010F\u001a\u00020\u0011\u00a2\u0006\u0004\u0008F\u0010\u001fR$\u0010N\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010M\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/changdu/component/webviewcache/CDWebView;",
        "Landroid/webkit/WebView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attributeSet",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "attrs",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/webkit/WebViewClient;",
        "getWebViewClient",
        "()Landroid/webkit/WebViewClient;",
        "client",
        "",
        "setWebViewClient",
        "(Landroid/webkit/WebViewClient;)V",
        "",
        "canGoBack",
        "()Z",
        "",
        "url",
        "loadUrl",
        "(Ljava/lang/String;)V",
        "",
        "additionalHttpHeaders",
        "(Ljava/lang/String;Ljava/util/Map;)V",
        "destroy",
        "()V",
        "release",
        "enable",
        "setEnableCustomCache",
        "(Z)V",
        "",
        "size",
        "setCacheSize",
        "(J)V",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "list",
        "setCacheBlackList",
        "(Ljava/util/ArrayList;)V",
        "addCacheBlackList",
        "Lcom/changdu/component/webviewcache/WebResourceInterceptor;",
        "interceptor",
        "addWebResourceInterceptor",
        "(Lcom/changdu/component/webviewcache/WebResourceInterceptor;)V",
        "Lcom/changdu/component/webviewcache/cookie/CDCookieManager;",
        "getCookieManager",
        "()Lcom/changdu/component/webviewcache/cookie/CDCookieManager;",
        "recycled",
        "setRecycled",
        "isRecycled",
        "functionName",
        "",
        "",
        "args",
        "runJavaScript",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "",
        "respDataMap",
        "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;",
        "jsInterfaceParamsData",
        "responseBizJavaScript",
        "(Ljava/util/Map;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;)V",
        "visible",
        "notifyVisible",
        "notifyUpdatePageAd",
        "Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;",
        "j",
        "Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;",
        "getCdJsBridgeListener",
        "()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;",
        "setCdJsBridgeListener",
        "(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;)V",
        "cdJsBridgeListener",
        "Companion",
        "WithHtmlMimeTypeFilter",
        "webview-cache_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCDWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDWebView.kt\ncom/changdu/component/webviewcache/CDWebView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,534:1\n1855#2,2:535\n1#3:537\n13374#4,3:538\n*S KotlinDebug\n*F\n+ 1 CDWebView.kt\ncom/changdu/component/webviewcache/CDWebView\n*L\n310#1:535,2\n448#1:538,3\n*E\n"
    }
.end annotation


# static fields
.field public static final CD_H5_VERSION_QUERY_PARAMETER:Ljava/lang/String; = "cdh5ver"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/changdu/component/webviewcache/CDWebView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final METHOD_GET:Ljava/lang/String; = "GET"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEME_HTTP:Ljava/lang/String; = "http"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEME_HTTPS:Ljava/lang/String; = "https"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Z

.field public c:J

.field public final d:Ljava/util/ArrayList;

.field public e:Lcom/changdu/component/webviewcache/internal/b;

.field public f:Landroid/webkit/WebViewClient;

.field public g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:Lcom/changdu/component/webviewcache/CDJsInterface;

.field public j:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/component/webviewcache/CDWebView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/component/webviewcache/CDWebView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/component/webviewcache/CDWebView;->Companion:Lcom/changdu/component/webviewcache/CDWebView$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/changdu/component/webviewcache/CDWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "attr"

    const-string v2, "android"

    const-string v3, "webViewStyle"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/changdu/component/webviewcache/CDWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 4
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->a:Z

    const-wide/32 p1, 0x6400000

    .line 6
    iput-wide p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->c:J

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->d:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->h:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Lcom/changdu/component/webviewcache/CDJsInterface;

    invoke-direct {p1}, Lcom/changdu/component/webviewcache/CDJsInterface;-><init>()V

    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->i:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 10
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDWebView;->a()V

    return-void
.end method

.method public static final clearCache(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/webviewcache/CDWebView;->Companion:Lcom/changdu/component/webviewcache/CDWebView$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/changdu/component/webviewcache/CDWebView$Companion;->clearCache(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final parseHtmlUrl(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/webviewcache/CDWebView;->Companion:Lcom/changdu/component/webviewcache/CDWebView$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/changdu/component/webviewcache/CDWebView$Companion;->parseHtmlUrl(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final preload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/webviewcache/CDWebView;->Companion:Lcom/changdu/component/webviewcache/CDWebView$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/changdu/component/webviewcache/CDWebView$Companion;->preload(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setDebug(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/webviewcache/CDWebView;->Companion:Lcom/changdu/component/webviewcache/CDWebView$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/changdu/component/webviewcache/CDWebView$Companion;->setDebug(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 11
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 16
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 17
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 18
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 19
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 20
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 21
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 22
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p0, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 24
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 25
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->i:Lcom/changdu/component/webviewcache/CDJsInterface;

    invoke-virtual {v0, p0}, Lcom/changdu/component/webviewcache/CDJsInterface;->bind(Lcom/changdu/component/webviewcache/CDWebView;)V

    .line 26
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/changdu/component/webviewcache/util/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_f

    .line 29
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v0, "http"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 30
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 31
    const-string v4, "cdnocache"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    iput-boolean v1, p0, Lcom/changdu/component/webviewcache/CDWebView;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->a:Z

    if-nez v0, :cond_3

    goto/16 :goto_7

    .line 35
    :cond_3
    iput-boolean v1, p0, Lcom/changdu/component/webviewcache/CDWebView;->a:Z

    .line 36
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_4
    const/4 v6, 0x1

    if-ge v5, v4, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Ljava/lang/String;

    .line 37
    invoke-static {p1, v7, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v1

    .line 38
    :goto_1
    iget-boolean v4, p0, Lcom/changdu/component/webviewcache/CDWebView;->b:Z

    if-eqz v4, :cond_d

    if-nez v0, :cond_d

    .line 39
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 40
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->e:Lcom/changdu/component/webviewcache/internal/b;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/internal/b;->destroy()V

    .line 41
    :cond_6
    iput-object v3, p0, Lcom/changdu/component/webviewcache/CDWebView;->e:Lcom/changdu/component/webviewcache/internal/b;

    .line 42
    new-instance v0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v4, p0, Lcom/changdu/component/webviewcache/CDWebView;->c:J

    invoke-virtual {v0, v4, v5}, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->setDiskCacheSize(J)Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;

    move-result-object v0

    .line 43
    const-string v4, "cdh5ver"

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 44
    new-instance p1, Lcom/changdu/component/webviewcache/CDWebView$WithHtmlMimeTypeFilter;

    invoke-direct {p1, p0}, Lcom/changdu/component/webviewcache/CDWebView$WithHtmlMimeTypeFilter;-><init>(Lcom/changdu/component/webviewcache/CDWebView;)V

    invoke-virtual {v0, p1}, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->setExtensionFilter(Lcom/changdu/component/webviewcache/config/MimeTypeFilter;)Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;

    goto :goto_2

    .line 45
    :cond_7
    new-instance p1, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;

    invoke-direct {p1}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->setExtensionFilter(Lcom/changdu/component/webviewcache/config/MimeTypeFilter;)Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;

    .line 46
    :goto_2
    new-instance p1, Lcom/changdu/component/webviewcache/internal/b;

    invoke-direct {p1, p0}, Lcom/changdu/component/webviewcache/internal/b;-><init>(Lcom/changdu/component/webviewcache/CDWebView;)V

    .line 47
    iget-object v2, p0, Lcom/changdu/component/webviewcache/CDWebView;->f:Landroid/webkit/WebViewClient;

    .line 48
    iput-object v2, p1, Lcom/changdu/component/webviewcache/internal/b;->a:Landroid/webkit/WebViewClient;

    .line 49
    sget-object v2, Lcom/changdu/component/webviewcache/config/CacheMode;->FORCE:Lcom/changdu/component/webviewcache/config/CacheMode;

    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->build()Lcom/changdu/component/webviewcache/config/CacheConfig;

    move-result-object v0

    .line 50
    iget-object v3, p1, Lcom/changdu/component/webviewcache/internal/b;->b:Lcom/changdu/component/webviewcache/internal/a;

    if-eqz v3, :cond_8

    .line 51
    iput-object v2, v3, Lcom/changdu/component/webviewcache/internal/a;->a:Lcom/changdu/component/webviewcache/config/CacheMode;

    .line 52
    iput-object v0, v3, Lcom/changdu/component/webviewcache/internal/a;->b:Lcom/changdu/component/webviewcache/config/CacheConfig;

    .line 53
    :cond_8
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    .line 54
    :cond_9
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->h:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_a
    :goto_3
    if-ge v1, v2, :cond_c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/changdu/component/webviewcache/WebResourceInterceptor;

    .line 56
    iget-object v4, p1, Lcom/changdu/component/webviewcache/internal/b;->b:Lcom/changdu/component/webviewcache/internal/a;

    if-eqz v4, :cond_a

    .line 57
    invoke-virtual {v4}, Lcom/changdu/component/webviewcache/internal/a;->a()Lcom/changdu/component/webviewcache/internal/i;

    move-result-object v4

    .line 58
    monitor-enter v4

    .line 59
    :try_start_1
    iget-object v5, v4, Lcom/changdu/component/webviewcache/internal/i;->c:Ljava/util/ArrayList;

    if-nez v5, :cond_b

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/changdu/component/webviewcache/internal/i;->c:Ljava/util/ArrayList;

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 61
    :cond_b
    :goto_4
    iget-object v5, v4, Lcom/changdu/component/webviewcache/internal/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    goto :goto_3

    .line 62
    :goto_5
    monitor-exit v4

    throw p1

    .line 63
    :cond_c
    :goto_6
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->e:Lcom/changdu/component/webviewcache/internal/b;

    .line 64
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_7

    .line 65
    :cond_d
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 66
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->e:Lcom/changdu/component/webviewcache/internal/b;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/internal/b;->destroy()V

    .line 67
    :cond_e
    iput-object v3, p0, Lcom/changdu/component/webviewcache/CDWebView;->e:Lcom/changdu/component/webviewcache/internal/b;

    .line 68
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz p1, :cond_f

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_f
    :goto_7
    return-void
.end method

.method public final addCacheBlackList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->a:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final addWebResourceInterceptor(Lcom/changdu/component/webviewcache/WebResourceInterceptor;)V
    .locals 1
    .param p1    # Lcom/changdu/component/webviewcache/WebResourceInterceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDWebView;->release()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->j:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCookieManager()Lcom/changdu/component/webviewcache/cookie/CDCookieManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->getInstance()Lcom/changdu/component/webviewcache/cookie/CDCookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->f:Landroid/webkit/WebViewClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final isRecycled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/component/webviewcache/CDWebView;->a(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/changdu/component/webviewcache/CDWebView;->a(Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final notifyUpdatePageAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->i:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/CDJsInterface;->notifyUpdatePageAd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final notifyVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->i:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/changdu/component/webviewcache/CDJsInterface;->notifyVisible(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final release()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->g:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/changdu/component/webviewcache/CDWebView;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/changdu/component/webviewcache/CDWebView;->e:Lcom/changdu/component/webviewcache/internal/b;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/changdu/component/webviewcache/internal/b;->destroy()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/changdu/component/webviewcache/CDWebView;->e:Lcom/changdu/component/webviewcache/internal/b;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDWebView;->getCookieManager()Lcom/changdu/component/webviewcache/cookie/CDCookieManager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->destroy()V

    .line 51
    .line 52
    .line 53
    const-string v0, ""

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->i:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/CDJsInterface;->unbind()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    .line 62
    .line 63
    :catch_1
    :try_start_2
    iput-object v1, p0, Lcom/changdu/component/webviewcache/CDWebView;->j:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    move-object v1, v0

    .line 77
    check-cast v1, Landroid/view/ViewGroup;

    .line 78
    .line 79
    :cond_1
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_2
    return-void
.end method

.method public final responseBizJavaScript(Ljava/util/Map;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->setRespData(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->clearParams()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->toJsonStr()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x1

    .line 12
    new-array p2, p2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    aput-object p1, p2, v0

    .line 16
    .line 17
    const-string p1, "nativeOnResponse"

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/webviewcache/CDWebView;->runJavaScript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final varargs runJavaScript(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "javascript:"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, "("

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    array-length p1, p2

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    array-length p1, p2

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v2, p1, :cond_3

    .line 26
    .line 27
    aget-object v4, p2, v2

    .line 28
    .line 29
    add-int/lit8 v5, v3, 0x1

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    instance-of v6, v4, Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :goto_1
    array-length v4, p2

    .line 65
    add-int/lit8 v4, v4, -0x1

    .line 66
    .line 67
    if-eq v3, v4, :cond_2

    .line 68
    .line 69
    const-string v3, ","

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    move v3, v5

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    :goto_2
    const-string p1, ");"

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/changdu/component/webviewcache/CDWebView;->loadUrl(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final setCacheBlackList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->a:Z

    .line 13
    .line 14
    return-void
.end method

.method public final setCacheSize(J)V
    .locals 2

    .line 1
    const-wide/32 v0, 0xa00000

    .line 2
    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-wide p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->c:J

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->a:Z

    .line 13
    .line 14
    return-void
.end method

.method public final setCdJsBridgeListener(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;)V
    .locals 0
    .param p1    # Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->j:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableCustomCache(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->b:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->a:Z

    .line 5
    .line 6
    return-void
.end method

.method public final setRecycled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1    # Landroid/webkit/WebViewClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebView;->e:Lcom/changdu/component/webviewcache/internal/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, v0, Lcom/changdu/component/webviewcache/internal/b;->a:Landroid/webkit/WebViewClient;

    .line 10
    .line 11
    :goto_0
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDWebView;->f:Landroid/webkit/WebViewClient;

    .line 12
    .line 13
    return-void
.end method
