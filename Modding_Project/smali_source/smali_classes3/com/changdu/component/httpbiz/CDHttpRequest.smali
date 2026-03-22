.class public final Lcom/changdu/component/httpbiz/CDHttpRequest;
.super Lcom/changdu/component/http/HttpRequest;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004J*\u0010\u000b\u001a\u00020\u00062\"\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0008j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002`\tJ\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0004J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/changdu/component/httpbiz/CDHttpRequest;",
        "Lcom/changdu/component/http/HttpRequest;",
        "",
        "httpBaseUrl",
        "",
        "debug",
        "",
        "init",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "map",
        "setRetryHostMap",
        "Lokhttp3/Interceptor;",
        "interceptor",
        "addInterceptor",
        "addNetworkInterceptor",
        "Lokhttp3/EventListener$Factory;",
        "eventListenerFactory",
        "setEventListenerFactory",
        "Lokhttp3/Dns;",
        "dns",
        "setDns",
        "enable",
        "setEnableProxy",
        "Lokhttp3/OkHttpClient$Builder;",
        "okHttpClientBuilder",
        "setOkHttpClientBuilder",
        "Lretrofit2/Retrofit$Builder;",
        "retrofitBuilder",
        "setRetrofitBuilder",
        "http-biz_release"
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
        "SMAP\nCDHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDHttpRequest.kt\ncom/changdu/component/httpbiz/CDHttpRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1855#2,2:114\n1855#2,2:116\n1#3:118\n*S KotlinDebug\n*F\n+ 1 CDHttpRequest.kt\ncom/changdu/component/httpbiz/CDHttpRequest\n*L\n69#1:114,2\n76#1:116,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/component/httpbiz/CDHttpRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/util/ArrayList;

.field public static final b:Ljava/util/ArrayList;

.field public static c:Lokhttp3/EventListener$Factory;

.field public static d:Lokhttp3/Dns;

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/httpbiz/CDHttpRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/httpbiz/CDHttpRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->INSTANCE:Lcom/changdu/component/httpbiz/CDHttpRequest;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/changdu/component/http/HttpRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic init$default(Lcom/changdu/component/httpbiz/CDHttpRequest;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/httpbiz/CDHttpRequest;->init(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final addInterceptor(Lokhttp3/Interceptor;)V
    .locals 1
    .param p1    # Lokhttp3/Interceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addNetworkInterceptor(Lokhttp3/Interceptor;)V
    .locals 1
    .param p1    # Lokhttp3/Interceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final init(Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "http://"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "https://"

    .line 19
    .line 20
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/changdu/component/http/HttpRequest;->setBaseUrl(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0, p2}, Lcom/changdu/component/http/HttpRequest;->setDebug(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final setDns(Lokhttp3/Dns;)V
    .locals 0
    .param p1    # Lokhttp3/Dns;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/httpbiz/CDHttpRequest;->d:Lokhttp3/Dns;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableProxy(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/changdu/component/httpbiz/CDHttpRequest;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEventListenerFactory(Lokhttp3/EventListener$Factory;)V
    .locals 0
    .param p1    # Lokhttp3/EventListener$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/httpbiz/CDHttpRequest;->c:Lokhttp3/EventListener$Factory;

    .line 2
    .line 3
    return-void
.end method

.method public setOkHttpClientBuilder(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 5
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/changdu/component/httpbiz/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/httpbiz/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    move v3, v1

    .line 26
    :goto_0
    if-ge v3, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    check-cast v4, Lokhttp3/Interceptor;

    .line 35
    .line 36
    invoke-virtual {p1, v4}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    sget-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->b:Ljava/util/ArrayList;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    :goto_2
    if-ge v1, v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    check-cast v3, Lokhttp3/Interceptor;

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    :goto_3
    sget-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->c:Lokhttp3/EventListener$Factory;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    .line 74
    .line 75
    .line 76
    :cond_4
    sget-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->d:Lokhttp3/Dns;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 81
    .line 82
    .line 83
    :cond_5
    sget-boolean v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->e:Z

    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    new-instance v0, Lcom/changdu/component/httpbiz/h;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/changdu/component/httpbiz/h;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->Kkkkkkkkkkkkkkkkk(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;

    .line 93
    .line 94
    .line 95
    :cond_6
    return-object p1
.end method

.method public setRetrofitBuilder(Lretrofit2/Retrofit$Builder;)Lretrofit2/Retrofit$Builder;
    .locals 2
    .param p1    # Lretrofit2/Retrofit$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/gson/Gson;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/changdu/component/httpbiz/a;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/changdu/component/httpbiz/a;-><init>(Lcom/google/gson/Gson;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method public final setRetryHostMap(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/http/HttpRequest;->Companion:Lcom/changdu/component/http/HttpRequest$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/changdu/component/http/HttpRequest$Companion;->setRetryHostMap(Ljava/util/HashMap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
