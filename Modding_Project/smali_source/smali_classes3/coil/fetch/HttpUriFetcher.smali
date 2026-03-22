.class public final Lcoil/fetch/HttpUriFetcher;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcoil/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/fetch/HttpUriFetcher$Factory;,
        Lcoil/fetch/HttpUriFetcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 A2\u00020\u0001:\u0002ABB=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0013\u0010\u0010\u001a\u00020\u000fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J#\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J5\u0010 \u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u001b\u0010$\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010&\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u0015\u0010(\u001a\u0004\u0018\u00010\u001e*\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0013\u0010+\u001a\u00020**\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0013\u0010.\u001a\u00020**\u00020-H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u0013\u00101\u001a\u000200*\u00020\u001cH\u0002\u00a2\u0006\u0004\u00081\u00102J\u0013\u00103\u001a\u00020-*\u00020\u001cH\u0002\u00a2\u0006\u0004\u00083\u00104R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u00105R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u00108R\u001c\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u00108R\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0014\u0010=\u001a\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010<R\u0014\u0010@\u001a\u00020>8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010?\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006C"
    }
    d2 = {
        "Lcoil/fetch/HttpUriFetcher;",
        "Lcoil/fetch/Fetcher;",
        "",
        "url",
        "Lcoil/request/Options;",
        "options",
        "Lkotlin/Lazy;",
        "Lokhttp3/Call$Factory;",
        "callFactory",
        "Lcoil/disk/DiskCache;",
        "diskCache",
        "",
        "respectCacheHeaders",
        "<init>",
        "(Ljava/lang/String;Lcoil/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Z)V",
        "Lcoil/fetch/FetchResult;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lokhttp3/MediaType;",
        "contentType",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;",
        "Lcoil/disk/DiskCache$Snapshot;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcoil/disk/DiskCache$Snapshot;",
        "snapshot",
        "Lokhttp3/Request;",
        "request",
        "Lokhttp3/Response;",
        "response",
        "Lcoil/network/CacheResponse;",
        "cacheResponse",
        "Wwwwwwwwwwwwwwwwwwww",
        "(Lcoil/disk/DiskCache$Snapshot;Lokhttp3/Request;Lokhttp3/Response;Lcoil/network/CacheResponse;)Lcoil/disk/DiskCache$Snapshot;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lokhttp3/Request;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/Request;Lokhttp3/Response;)Z",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcoil/disk/DiskCache$Snapshot;)Lcoil/network/CacheResponse;",
        "Lcoil/decode/ImageSource;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;",
        "Lokhttp3/ResponseBody;",
        "Wwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/ResponseBody;)Lcoil/decode/ImageSource;",
        "Lcoil/decode/DataSource;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/Response;)Lcoil/decode/DataSource;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/Response;)Lokhttp3/ResponseBody;",
        "Ljava/lang/String;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/request/Options;",
        "Lkotlin/Lazy;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "()Ljava/lang/String;",
        "diskCacheKey",
        "Lokio/FileSystem;",
        "()Lokio/FileSystem;",
        "fileSystem",
        "Companion",
        "Factory",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcoil/fetch/HttpUriFetcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/CacheControl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/CacheControl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcoil/disk/DiskCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil/fetch/HttpUriFetcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil/fetch/HttpUriFetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil/fetch/HttpUriFetcher;->Companion:Lcoil/fetch/HttpUriFetcher$Companion;

    .line 8
    .line 9
    new-instance v0, Lokhttp3/CacheControl$Builder;

    .line 10
    .line 11
    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/CacheControl;

    .line 27
    .line 28
    new-instance v0, Lokhttp3/CacheControl$Builder;

    .line 29
    .line 30
    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/CacheControl;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcoil/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcoil/request/Options;",
            "Lkotlin/Lazy<",
            "+",
            "Lokhttp3/Call$Factory;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcoil/disk/DiskCache;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/fetch/HttpUriFetcher;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;Lokhttp3/Request;Lokhttp3/Response;Lcoil/network/CacheResponse;)Lcoil/disk/DiskCache$Snapshot;
    .locals 4

    .line 1
    invoke-virtual {p0, p2, p3}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lokhttp3/Response;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Lcoil/disk/DiskCache$Snapshot;->Wwwwwwwww()Lcoil/disk/DiskCache$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 22
    .line 23
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcoil/disk/DiskCache;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p1, p2}, Lcoil/disk/DiskCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcoil/disk/DiskCache$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move-object p1, v0

    .line 41
    :goto_0
    if-nez p1, :cond_4

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_4
    :try_start_0
    invoke-virtual {p3}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    const/16 v1, 0x130

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    if-ne p2, v1, :cond_8

    .line 52
    .line 53
    if-eqz p4, :cond_8

    .line 54
    .line 55
    invoke-virtual {p3}, Lokhttp3/Response;->Kkkkkkkkkkkk()Lokhttp3/Response$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    sget-object v1, Lcoil/network/CacheStrategy;->Companion:Lcoil/network/CacheStrategy$Companion;

    .line 60
    .line 61
    invoke-virtual {p4}, Lcoil/network/CacheResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    invoke-virtual {p3}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkk()Lokhttp3/Headers;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, p4, v3}, Lcoil/network/CacheStrategy$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-virtual {p2, p4}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p2}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/FileSystem;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    invoke-interface {p1}, Lcoil/disk/DiskCache$Editor;->getMetadata()Lokio/Path;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p4, v1, v2}, Lokio/FileSystem;->Wwwwwwwwwwwwwwww(Lokio/Path;Z)Lokio/Sink;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    invoke-static {p4}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 94
    .line 95
    .line 96
    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 97
    :try_start_1
    new-instance v1, Lcoil/network/CacheResponse;

    .line 98
    .line 99
    invoke-direct {v1, p2}, Lcoil/network/CacheResponse;-><init>(Lokhttp3/Response;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p4}, Lcoil/network/CacheResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/BufferedSink;)V

    .line 103
    .line 104
    .line 105
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p2

    .line 109
    move-object v0, p2

    .line 110
    :goto_1
    if-eqz p4, :cond_6

    .line 111
    .line 112
    :try_start_2
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_1
    move-exception p2

    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    move-object v0, p2

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    :try_start_3
    invoke-static {v0, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catchall_2
    move-exception p1

    .line 126
    goto/16 :goto_9

    .line 127
    .line 128
    :catch_0
    move-exception p2

    .line 129
    goto/16 :goto_8

    .line 130
    .line 131
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_7
    throw v0

    .line 135
    :cond_8
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/FileSystem;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-interface {p1}, Lcoil/disk/DiskCache$Editor;->getMetadata()Lokio/Path;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    invoke-virtual {p2, p4, v2}, Lokio/FileSystem;->Wwwwwwwwwwwwwwww(Lokio/Path;Z)Lokio/Sink;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p2}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 148
    .line 149
    .line 150
    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 151
    :try_start_4
    new-instance p4, Lcoil/network/CacheResponse;

    .line 152
    .line 153
    invoke-direct {p4, p3}, Lcoil/network/CacheResponse;-><init>(Lokhttp3/Response;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p4, p2}, Lcoil/network/CacheResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/BufferedSink;)V

    .line 157
    .line 158
    .line 159
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 160
    .line 161
    move-object p4, v0

    .line 162
    goto :goto_3

    .line 163
    :catchall_3
    move-exception p4

    .line 164
    :goto_3
    if-eqz p2, :cond_a

    .line 165
    .line 166
    :try_start_5
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :catchall_4
    move-exception p2

    .line 171
    if-nez p4, :cond_9

    .line 172
    .line 173
    move-object p4, p2

    .line 174
    goto :goto_4

    .line 175
    :cond_9
    :try_start_6
    invoke-static {p4, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    :cond_a
    :goto_4
    if-nez p4, :cond_e

    .line 179
    .line 180
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/FileSystem;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-interface {p1}, Lcoil/disk/DiskCache$Editor;->getData()Lokio/Path;

    .line 185
    .line 186
    .line 187
    move-result-object p4

    .line 188
    invoke-virtual {p2, p4, v2}, Lokio/FileSystem;->Wwwwwwwwwwwwwwww(Lokio/Path;Z)Lokio/Sink;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-static {p2}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 193
    .line 194
    .line 195
    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 196
    :try_start_7
    invoke-virtual {p3}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 197
    .line 198
    .line 199
    move-result-object p4

    .line 200
    invoke-virtual {p4}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 201
    .line 202
    .line 203
    move-result-object p4

    .line 204
    invoke-interface {p4, p2}, Lokio/BufferedSource;->Wwww(Lokio/Sink;)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :catchall_5
    move-exception p4

    .line 209
    move-object v0, p4

    .line 210
    :goto_5
    if-eqz p2, :cond_c

    .line 211
    .line 212
    :try_start_8
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 213
    .line 214
    .line 215
    goto :goto_6

    .line 216
    :catchall_6
    move-exception p2

    .line 217
    if-nez v0, :cond_b

    .line 218
    .line 219
    move-object v0, p2

    .line 220
    goto :goto_6

    .line 221
    :cond_b
    :try_start_9
    invoke-static {v0, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    :cond_c
    :goto_6
    if-nez v0, :cond_d

    .line 225
    .line 226
    :goto_7
    invoke-interface {p1}, Lcoil/disk/DiskCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskCache$Snapshot;

    .line 227
    .line 228
    .line 229
    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 230
    invoke-static {p3}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 231
    .line 232
    .line 233
    return-object p1

    .line 234
    :cond_d
    :try_start_a
    throw v0

    .line 235
    :cond_e
    throw p4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 236
    :goto_8
    :try_start_b
    invoke-static {p1}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Editor;)V

    .line 237
    .line 238
    .line 239
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 240
    :goto_9
    invoke-static {p3}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 241
    .line 242
    .line 243
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww(Lokhttp3/ResponseBody;)Lcoil/decode/ImageSource;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcoil/request/Options;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Lcoil/decode/ImageSources;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/BufferedSource;Landroid/content/Context;)Lcoil/decode/ImageSource;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcoil/disk/DiskCache$Snapshot;->getData()Lokio/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/FileSystem;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0, v1, v2, p1}, Lcoil/decode/ImageSources;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Ljava/io/Closeable;)Lcoil/decode/ImageSource;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lcoil/decode/DataSource;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkk()Lokhttp3/Response;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcoil/decode/DataSource;->NETWORK:Lcoil/decode/DataSource;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p1, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 11
    .line 12
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;)Lcoil/network/CacheResponse;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/FileSystem;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {p1}, Lcoil/disk/DiskCache$Snapshot;->getMetadata()Lokio/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Lokio/FileSystem;->Wwwwwwwwwwwwwww(Lokio/Path;)Lokio/Source;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)Lokio/BufferedSource;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    new-instance v1, Lcoil/network/CacheResponse;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lcoil/network/CacheResponse;-><init>(Lokio/BufferedSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    move-object v2, v1

    .line 24
    move-object v1, v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    move-object v2, v0

    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    move-object v1, p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :try_start_3
    invoke-static {v1, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 46
    :catch_0
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "response body == null"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskCache$Snapshot;
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcoil/request/Options;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 15
    .line 16
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcoil/disk/DiskCache;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Lcoil/disk/DiskCache;->get(Ljava/lang/String;)Lcoil/disk/DiskCache$Snapshot;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_0
    return-object v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcoil/request/Options;->Wwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcoil/request/Options;->Wwwwwwwwwwwwwwwwwwww()Lcoil/request/Tags;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcoil/request/Tags;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/Class;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwww(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcoil/request/Options;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcoil/request/Options;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_1

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    sget-object v1, Lokhttp3/CacheControl;->Wwwwwwwwwwwwwwwwwwww:Lokhttp3/CacheControl;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    if-eqz v2, :cond_3

    .line 97
    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcoil/request/Options;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    sget-object v1, Lokhttp3/CacheControl;->Wwwwwwwwwwwwwwwwwwwww:Lokhttp3/CacheControl;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    sget-object v1, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/CacheControl;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    if-nez v2, :cond_4

    .line 125
    .line 126
    if-nez v1, :cond_4

    .line 127
    .line 128
    sget-object v1, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/CacheControl;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcoil/request/Options;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcoil/network/CacheStrategy;->Companion:Lcoil/network/CacheStrategy$Companion;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcoil/network/CacheStrategy$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lokhttp3/Response;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p2, v0

    .line 10
    :goto_0
    const/4 v1, 0x2

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    const-string v2, "text/plain"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p2, v2, v3, v1, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2, p1}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_2
    if-eqz p2, :cond_3

    .line 34
    .line 35
    const/16 p1, 0x3b

    .line 36
    .line 37
    invoke-static {p2, p1, v0, v1, v0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/FileSystem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil/disk/DiskCache;

    .line 8
    .line 9
    invoke-interface {v0}, Lcoil/disk/DiskCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/FileSystem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcoil/request/Options;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lokhttp3/Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;-><init>(Lcoil/fetch/HttpUriFetcher;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwww()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    iget-object p2, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/Options;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcoil/request/Options;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_3

    .line 70
    .line 71
    iget-object p2, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 72
    .line 73
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lokhttp3/Call$Factory;

    .line 78
    .line 79
    invoke-interface {p2, p1}, Lokhttp3/Call$Factory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Call;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    new-instance p1, Landroid/os/NetworkOnMainThreadException;

    .line 89
    .line 90
    invoke-direct {p1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_4
    iget-object p2, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 95
    .line 96
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Lokhttp3/Call$Factory;

    .line 101
    .line 102
    invoke-interface {p2, p1}, Lokhttp3/Call$Factory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Call;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput v3, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    .line 107
    .line 108
    invoke-static {p1, v0}, Lcoil/util/-Calls;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-ne p2, v1, :cond_5

    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_5
    :goto_1
    move-object p1, p2

    .line 116
    check-cast p1, Lokhttp3/Response;

    .line 117
    .line 118
    :goto_2
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkk()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-nez p2, :cond_7

    .line 123
    .line 124
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    const/16 v0, 0x130

    .line 129
    .line 130
    if-eq p2, v0, :cond_7

    .line 131
    .line 132
    invoke-virtual {p1}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    if-eqz p2, :cond_6

    .line 137
    .line 138
    invoke-static {p2}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    new-instance p2, Lcoil/network/HttpException;

    .line 142
    .line 143
    invoke-direct {p2, p1}, Lcoil/network/HttpException;-><init>(Lokhttp3/Response;)V

    .line 144
    .line 145
    .line 146
    throw p2

    .line 147
    :cond_7
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/fetch/FetchResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcoil/fetch/HttpUriFetcher$fetch$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcoil/fetch/HttpUriFetcher$fetch$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil/fetch/HttpUriFetcher$fetch$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcoil/fetch/HttpUriFetcher$fetch$1;-><init>(Lcoil/fetch/HttpUriFetcher;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v6, :cond_2

    .line 41
    .line 42
    if-ne v2, v5, :cond_1

    .line 43
    .line 44
    iget-object v1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lokhttp3/Response;

    .line 47
    .line 48
    iget-object v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lcoil/disk/DiskCache$Snapshot;

    .line 51
    .line 52
    iget-object v0, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcoil/fetch/HttpUriFetcher;

    .line 55
    .line 56
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    iget-object v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Lcoil/network/CacheStrategy;

    .line 75
    .line 76
    iget-object v6, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v6, Lcoil/disk/DiskCache$Snapshot;

    .line 79
    .line 80
    iget-object v8, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v8, Lcoil/fetch/HttpUriFetcher;

    .line 83
    .line 84
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    move-object v11, v6

    .line 88
    move-object v6, v2

    .line 89
    move-object v2, v11

    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :catch_1
    move-exception p1

    .line 93
    goto/16 :goto_7

    .line 94
    .line 95
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskCache$Snapshot;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_8

    .line 103
    .line 104
    :try_start_2
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/FileSystem;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {p1}, Lcoil/disk/DiskCache$Snapshot;->getMetadata()Lokio/Path;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v2, v8}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Lokio/FileMetadata;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lokio/FileMetadata;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-nez v2, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v8

    .line 127
    cmp-long v2, v8, v3

    .line 128
    .line 129
    if-nez v2, :cond_5

    .line 130
    .line 131
    new-instance v0, Lcoil/fetch/SourceResult;

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget-object v2, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p0, v2, v7}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    sget-object v3, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 144
    .line 145
    invoke-direct {v0, v1, v2, v3}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :catch_2
    move-exception v0

    .line 150
    move-object v6, p1

    .line 151
    move-object p1, v0

    .line 152
    goto/16 :goto_7

    .line 153
    .line 154
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 155
    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    new-instance v2, Lcoil/network/CacheStrategy$Factory;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;)Lcoil/network/CacheResponse;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-direct {v2, v8, v9}, Lcoil/network/CacheStrategy$Factory;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcoil/network/CacheStrategy$Factory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/network/CacheStrategy;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lcoil/network/CacheStrategy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    if-nez v8, :cond_9

    .line 180
    .line 181
    invoke-virtual {v2}, Lcoil/network/CacheStrategy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/network/CacheResponse;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    if-eqz v8, :cond_9

    .line 186
    .line 187
    new-instance v0, Lcoil/fetch/SourceResult;

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v3, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v2}, Lcoil/network/CacheStrategy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/network/CacheResponse;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcoil/network/CacheResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/MediaType;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {p0, v3, v2}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    sget-object v3, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 208
    .line 209
    invoke-direct {v0, v1, v2, v3}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 210
    .line 211
    .line 212
    return-object v0

    .line 213
    :cond_6
    new-instance v0, Lcoil/fetch/SourceResult;

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iget-object v2, p0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;)Lcoil/network/CacheResponse;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    if-eqz v3, :cond_7

    .line 226
    .line 227
    invoke-virtual {v3}, Lcoil/network/CacheResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/MediaType;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    :cond_7
    invoke-virtual {p0, v2, v7}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    sget-object v3, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 236
    .line 237
    invoke-direct {v0, v1, v2, v3}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 238
    .line 239
    .line 240
    return-object v0

    .line 241
    :cond_8
    new-instance v2, Lcoil/network/CacheStrategy$Factory;

    .line 242
    .line 243
    invoke-virtual {p0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    invoke-direct {v2, v8, v7}, Lcoil/network/CacheStrategy$Factory;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Lcoil/network/CacheStrategy$Factory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/network/CacheStrategy;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    :cond_9
    invoke-virtual {v2}, Lcoil/network/CacheStrategy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    iput-object p0, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    .line 259
    .line 260
    iput-object p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    .line 261
    .line 262
    iput-object v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    .line 263
    .line 264
    iput v6, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    .line 265
    .line 266
    invoke-virtual {p0, v8, v0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 270
    if-ne v6, v1, :cond_a

    .line 271
    .line 272
    goto/16 :goto_4

    .line 273
    .line 274
    :cond_a
    move-object v8, v2

    .line 275
    move-object v2, p1

    .line 276
    move-object p1, v6

    .line 277
    move-object v6, v8

    .line 278
    move-object v8, p0

    .line 279
    :goto_2
    :try_start_3
    check-cast p1, Lokhttp3/Response;

    .line 280
    .line 281
    invoke-virtual {v8, p1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    .line 282
    .line 283
    .line 284
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 285
    :try_start_4
    invoke-virtual {v6}, Lcoil/network/CacheStrategy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-virtual {v6}, Lcoil/network/CacheStrategy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/network/CacheResponse;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v8, v2, v10, p1, v6}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;Lokhttp3/Request;Lokhttp3/Response;Lcoil/network/CacheResponse;)Lcoil/disk/DiskCache$Snapshot;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    if-eqz v2, :cond_c

    .line 298
    .line 299
    new-instance v0, Lcoil/fetch/SourceResult;

    .line 300
    .line 301
    invoke-virtual {v8, v2}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    iget-object v3, v8, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v8, v2}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskCache$Snapshot;)Lcoil/network/CacheResponse;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    if-eqz v4, :cond_b

    .line 312
    .line 313
    invoke-virtual {v4}, Lcoil/network/CacheResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/MediaType;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    goto :goto_3

    .line 318
    :catch_3
    move-exception v0

    .line 319
    move-object v1, p1

    .line 320
    move-object p1, v0

    .line 321
    goto :goto_6

    .line 322
    :cond_b
    :goto_3
    invoke-virtual {v8, v3, v7}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    sget-object v4, Lcoil/decode/DataSource;->NETWORK:Lcoil/decode/DataSource;

    .line 327
    .line 328
    invoke-direct {v0, v1, v3, v4}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 329
    .line 330
    .line 331
    return-object v0

    .line 332
    :cond_c
    invoke-virtual {v9}, Lokhttp3/ResponseBody;->contentLength()J

    .line 333
    .line 334
    .line 335
    move-result-wide v6

    .line 336
    cmp-long v3, v6, v3

    .line 337
    .line 338
    if-lez v3, :cond_d

    .line 339
    .line 340
    new-instance v0, Lcoil/fetch/SourceResult;

    .line 341
    .line 342
    invoke-virtual {v8, v9}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwww(Lokhttp3/ResponseBody;)Lcoil/decode/ImageSource;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    iget-object v3, v8, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v9}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v8, v3, v4}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-virtual {v8, p1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lcoil/decode/DataSource;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-direct {v0, v1, v3, v4}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 361
    .line 362
    .line 363
    return-object v0

    .line 364
    :cond_d
    invoke-static {p1}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v8}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    iput-object v8, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    .line 372
    .line 373
    iput-object v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    .line 374
    .line 375
    iput-object p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    .line 376
    .line 377
    iput v5, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    .line 378
    .line 379
    invoke-virtual {v8, v3, v0}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 383
    if-ne v0, v1, :cond_e

    .line 384
    .line 385
    :goto_4
    return-object v1

    .line 386
    :cond_e
    move-object v1, p1

    .line 387
    move-object p1, v0

    .line 388
    move-object v0, v8

    .line 389
    :goto_5
    :try_start_5
    check-cast p1, Lokhttp3/Response;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 390
    .line 391
    :try_start_6
    invoke-virtual {v0, p1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    new-instance v3, Lcoil/fetch/SourceResult;

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwww(Lokhttp3/ResponseBody;)Lcoil/decode/ImageSource;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    iget-object v5, v0, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v0, v5, v1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v0, p1}, Lcoil/fetch/HttpUriFetcher;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lcoil/decode/DataSource;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-direct {v3, v4, v1, v0}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 416
    .line 417
    .line 418
    return-object v3

    .line 419
    :goto_6
    :try_start_7
    invoke-static {v1}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 420
    .line 421
    .line 422
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 423
    :catch_4
    move-exception p1

    .line 424
    move-object v6, v2

    .line 425
    :goto_7
    if-eqz v6, :cond_f

    .line 426
    .line 427
    invoke-static {v6}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 428
    .line 429
    .line 430
    :cond_f
    throw p1
.end method
