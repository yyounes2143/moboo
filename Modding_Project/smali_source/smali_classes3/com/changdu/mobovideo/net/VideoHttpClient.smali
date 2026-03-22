.class public final Lcom/changdu/mobovideo/net/VideoHttpClient;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJA\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\r2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J>\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u000c\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\r2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J4\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\rH\u0086@\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0003J3\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ;\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\r2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J<\u0010&\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010#\u001a\u00020\"2\u0008\u0008\u0002\u0010$\u001a\u00020\u00042\u0008\u0008\u0002\u0010%\u001a\u00020\u0004H\u0082@\u00a2\u0006\u0004\u0008&\u0010\'J2\u0010(\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010#\u001a\u00020\"2\u0008\u0008\u0002\u0010%\u001a\u00020\u0004H\u0082@\u00a2\u0006\u0004\u0008(\u0010)R\u0017\u0010/\u001a\u00020*8\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u00100\u001a\u0004\u00085\u00102\"\u0004\u00086\u00104R\u0018\u00109\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u00108\u00a8\u0006:"
    }
    d2 = {
        "Lcom/changdu/mobovideo/net/VideoHttpClient;",
        "",
        "<init>",
        "()V",
        "",
        "enableProxy",
        "debug",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(ZZ)V",
        "",
        "method",
        "url",
        "",
        "headers",
        "args",
        "Lokhttp3/Callback;",
        "callBack",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Callback;)V",
        "Lcom/changdu/mobovideo/googleengage/UserRequestCache;",
        "userCache",
        "Lokhttp3/Response;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/changdu/mobovideo/googleengage/UserRequestCache;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "savedFilePath",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/util/Map;Lokhttp3/Callback;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Callback;)V",
        "downloadUrl",
        "Lokhttp3/Call;",
        "call",
        "force",
        "needReport",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lokhttp3/MediaType;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokhttp3/MediaType;",
        "getMEDIA_JSON",
        "()Lokhttp3/MediaType;",
        "MEDIA_JSON",
        "Z",
        "getDebug",
        "()Z",
        "setDebug",
        "(Z)V",
        "getEnableProxy",
        "setEnableProxy",
        "Lokhttp3/OkHttpClient;",
        "Lokhttp3/OkHttpClient;",
        "okHttpClient",
        "app_outsideRelease"
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
        "SMAP\nVideoHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoHttpClient.kt\ncom/changdu/mobovideo/net/VideoHttpClient\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,542:1\n216#2,2:543\n216#2,2:545\n216#2,2:547\n216#2,2:549\n*S KotlinDebug\n*F\n+ 1 VideoHttpClient.kt\ncom/changdu/mobovideo/net/VideoHttpClient\n*L\n152#1:543,2\n166#1:545,2\n186#1:547,2\n203#1:549,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/mobovideo/net/VideoHttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/MediaType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/net/VideoHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/mobovideo/net/VideoHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/mobovideo/net/VideoHttpClient;->INSTANCE:Lcom/changdu/mobovideo/net/VideoHttpClient;

    .line 7
    .line 8
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 9
    .line 10
    const-string v1, "application/json; charset=utf-8"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/MediaType;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/net/VideoHttpClient;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Callback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lokhttp3/Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "GET"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2, p3, p5}, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/Map;Lokhttp3/Callback;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "POST"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Callback;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/changdu/mobovideo/googleengage/UserRequestCache;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/changdu/mobovideo/googleengage/UserRequestCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
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
            ">;",
            "Ljava/lang/String;",
            "Lcom/changdu/mobovideo/googleengage/UserRequestCache;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lokhttp3/Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 5
    .line 6
    .line 7
    new-instance p5, Lokhttp3/Headers$Builder;

    .line 8
    .line 9
    invoke-direct {p5}, Lokhttp3/Headers$Builder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p5, v1, v0}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 49
    .line 50
    sget-object v0, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/MediaType;

    .line 51
    .line 52
    invoke-virtual {p2, p3, v0}, Lokhttp3/RequestBody$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    new-instance p3, Lokhttp3/Request$Builder;

    .line 60
    .line 61
    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p5}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object p2, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/OkHttpClient;

    .line 85
    .line 86
    invoke-static {p1, p4}, Lcom/changdu/mobovideo/net/VideoHttpClientKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lcom/changdu/mobovideo/googleengage/UserRequestCache;)Lokhttp3/Request;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Call;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p2, "content-length"

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 45
    .line 46
    .line 47
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 48
    .line 49
    sget-object v1, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/MediaType;

    .line 50
    .line 51
    invoke-virtual {p2, p3, v1}, Lokhttp3/RequestBody$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    new-instance p3, Lokhttp3/Request$Builder;

    .line 56
    .line 57
    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object p2, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/OkHttpClient;

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Call;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1, p4}, Lokhttp3/Call;->Wwwwwwwwwwwwww(Lokhttp3/Callback;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p2, "content-length"

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 45
    .line 46
    .line 47
    new-instance p2, Lokhttp3/Request$Builder;

    .line 48
    .line 49
    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object p2, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/OkHttpClient;

    .line 69
    .line 70
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Call;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1, p3}, Lokhttp3/Call;->Wwwwwwwwwwwwww(Lokhttp3/Callback;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-nez p3, :cond_1

    .line 47
    .line 48
    new-instance p3, Lokhttp3/Request$Builder;

    .line 49
    .line 50
    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p3, v0}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p3}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    sget-object v0, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/OkHttpClient;

    .line 70
    .line 71
    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Call;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    sget-object p3, Lcom/changdu/mobovideo/plugins/CDNetwork;->Companion:Lcom/changdu/mobovideo/plugins/CDNetwork$Companion;

    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/changdu/mobovideo/plugins/CDNetwork$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    const/4 v5, 0x1

    .line 82
    move-object v1, p0

    .line 83
    move-object v2, p1

    .line 84
    move-object v3, p2

    .line 85
    move-object v7, p4

    .line 86
    invoke-virtual/range {v1 .. v7}, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ZZ)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    sput-boolean p2, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    move-object v4, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v5, p3

    .line 11
    move v3, p4

    .line 12
    move v6, p5

    .line 13
    invoke-direct/range {v1 .. v7}, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;-><init>(Ljava/lang/String;ZLjava/lang/String;Lokhttp3/Call;ZLkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, p6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v5, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move v4, p4

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;-><init>(Ljava/lang/String;Lokhttp3/Call;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget-object v0, Lcom/changdu/component/http/HttpRequest;->Companion:Lcom/changdu/component/http/HttpRequest$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/changdu/component/http/HttpRequest$Companion;->createNewOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    const-wide/16 v2, 0xf

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->Kkkkkkkkkkkkkkkk(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->Illllllllllllllllllllllll(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/changdu/mobovideo/net/VideoHttpDns;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/changdu/mobovideo/net/VideoHttpDns;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->Kkkkkkkkkkkkkkk(Z)Lokhttp3/OkHttpClient$Builder;

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/changdu/component/http/SslHelper;->UnSafeHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->Kkkkkkkkkkkkkkkkkk(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/changdu/component/http/SslHelper;->getSslSocketFactory()Lcom/changdu/component/http/SslHelper$SSLParams;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget-object v2, v1, Lcom/changdu/component/http/SslHelper$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-object v1, v1, Lcom/changdu/component/http/SslHelper$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->Illlllllllllllllllllllllll(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    :goto_0
    new-instance v1, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;

    .line 65
    .line 66
    invoke-direct {v1}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/changdu/mobovideo/net/VideoHttpCustomUserAgentInterceptor;

    .line 73
    .line 74
    invoke-direct {v1}, Lcom/changdu/mobovideo/net/VideoHttpCustomUserAgentInterceptor;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 78
    .line 79
    .line 80
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-direct {v1, v3, v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    .line 86
    .line 87
    sget-boolean v2, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/changdu/component/http/CDHttpDetailLoggingInterceptor;

    .line 100
    .line 101
    invoke-direct {v1}, Lcom/changdu/component/http/CDHttpDetailLoggingInterceptor;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    sget-object v1, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwww:Lokhttp3/EventListener$Factory;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    .line 116
    .line 117
    .line 118
    sget-boolean v1, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 119
    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    new-instance v1, Lcom/changdu/mobovideo/net/VideoHttpClient$checkOkHttpClient$okHttpClientBuilder$1$1;

    .line 123
    .line 124
    invoke-direct {v1}, Lcom/changdu/mobovideo/net/VideoHttpClient$checkOkHttpClient$okHttpClientBuilder$1$1;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->Kkkkkkkkkkkkkkkkk(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/OkHttpClient;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sput-object v0, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/OkHttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 138
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    throw v0
.end method
