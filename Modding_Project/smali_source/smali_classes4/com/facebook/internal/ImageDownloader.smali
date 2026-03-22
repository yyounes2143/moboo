.class public final Lcom/facebook/internal/ImageDownloader;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageDownloader$RequestKey;,
        Lcom/facebook/internal/ImageDownloader$DownloaderContext;,
        Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;,
        Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010%\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00046789B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J/\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J9\u0010\u001f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u000e\u0010\u001b\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001f\u0010!\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008&\u0010\'R\u001e\u0010-\u001a\u0004\u0018\u00010(8B@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u0014\u00100\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00102\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u0010/R \u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020%038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u00104\u00a8\u0006:"
    }
    d2 = {
        "Lcom/facebook/internal/ImageDownloader;",
        "",
        "<init>",
        "()V",
        "Lcom/facebook/internal/ImageRequest;",
        "request",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/internal/ImageRequest;)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/internal/ImageRequest;)Z",
        "Lcom/facebook/internal/ImageDownloader$RequestKey;",
        "key",
        "allowCachedRedirects",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V",
        "Lcom/facebook/internal/WorkQueue;",
        "workQueue",
        "Ljava/lang/Runnable;",
        "workItem",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "error",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "isCachedRedirect",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/internal/ImageDownloader$RequestKey;)V",
        "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
        "Wwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
        "Landroid/os/Handler;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/os/Handler;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/os/Handler;",
        "handler",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/facebook/internal/WorkQueue;",
        "downloadQueue",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "cacheReadQueue",
        "",
        "Ljava/util/Map;",
        "pendingRequests",
        "CacheReadWorkItem",
        "DownloadImageWorkItem",
        "DownloaderContext",
        "RequestKey",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/ImageDownloader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/internal/ImageDownloader;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/internal/ImageDownloader;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/internal/ImageDownloader;->INSTANCE:Lcom/facebook/internal/ImageDownloader;

    .line 7
    .line 8
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/internal/WorkQueue;-><init>(ILjava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue;

    .line 18
    .line 19
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    .line 20
    .line 21
    invoke-direct {v0, v3, v2, v3, v2}, Lcom/facebook/internal/WorkQueue;-><init>(ILjava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue;

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 32
    .line 33
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

.method public static final Wwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/internal/ImageResponse;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/internal/ImageResponse;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p4, v0}, Lcom/facebook/internal/ImageRequest$Callback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageResponse;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;)V
    .locals 4
    .param p0    # Lcom/facebook/internal/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2, p0}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    invoke-virtual {v2, p0}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {p0}, Lcom/facebook/internal/WorkQueue$WorkItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->INSTANCE:Lcom/facebook/internal/ImageDownloader;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2, p0, v0, v3}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    :goto_0
    monitor-exit v1

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit v1

    .line 64
    throw p0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;)Z
    .locals 4
    .param p0    # Lcom/facebook/internal/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-interface {v2}, Lcom/facebook/internal/WorkQueue$WorkItem;->cancel()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v1, v3}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return v3

    .line 53
    :goto_1
    monitor-exit p0

    .line 54
    throw v0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0

    .line 14
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/facebook/internal/UrlRedirectCache;->INSTANCE:Lcom/facebook/internal/UrlRedirectCache;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Lcom/facebook/internal/UrlRedirectCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-static {p2}, Lcom/facebook/internal/ImageResponseCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p2, v0

    .line 26
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 27
    .line 28
    sget-object p2, Lcom/facebook/internal/ImageResponseCache;->INSTANCE:Lcom/facebook/internal/ImageResponseCache;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2}, Lcom/facebook/internal/ImageResponseCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :cond_2
    if-eqz p2, :cond_3

    .line 39
    .line 40
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {p2}, Lcom/facebook/internal/Utility;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-nez p2, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    invoke-virtual {p2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/internal/ImageRequest;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_1
    if-eqz p2, :cond_5

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_5

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/internal/ImageRequest;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_0
    move-object v6, p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/internal/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/internal/ImageRequest$Callback;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    if-eqz v6, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    new-instance v1, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;

    .line 37
    .line 38
    move-object v3, p2

    .line 39
    move-object v5, p3

    .line 40
    move v4, p4

    .line 41
    invoke-direct/range {v1 .. v6}, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_2
    return-void
.end method

.method public final declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Handler;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 5
    .line 6
    invoke-direct {v1, p1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/internal/ImageRequest;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p3, p4, v2, p1, p2}, Lcom/facebook/internal/WorkQueue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;ZILjava/lang/Object;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/WorkQueue$WorkItem;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0

    .line 28
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue;

    .line 2
    .line 3
    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;-><init>(Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue;

    .line 2
    .line 3
    new-instance v1, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;

    .line 4
    .line 5
    invoke-direct {v1, p2, p3}, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;-><init>(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_5

    .line 22
    .line 23
    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/16 v5, 0xc8

    .line 33
    .line 34
    if-eq v4, v5, :cond_4

    .line 35
    .line 36
    const/16 v5, 0x12d

    .line 37
    .line 38
    if-eq v4, v5, :cond_2

    .line 39
    .line 40
    const/16 v5, 0x12e

    .line 41
    .line 42
    if-eq v4, v5, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 45
    .line 46
    .line 47
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    new-instance v6, Ljava/io/InputStreamReader;

    .line 56
    .line 57
    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 58
    .line 59
    .line 60
    const/16 v7, 0x80

    .line 61
    .line 62
    new-array v8, v7, [C

    .line 63
    .line 64
    :goto_0
    invoke-virtual {v6, v8, v0, v7}, Ljava/io/InputStreamReader;->read([CII)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-lez v9, :cond_0

    .line 69
    .line 70
    invoke-virtual {v5, v8, v0, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    move-object v1, v4

    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :catch_0
    move-exception v5

    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_0
    invoke-static {v6}, Lcom/facebook/internal/Utility;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const-string v6, "Unexpected error while downloading an image."

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :goto_1
    new-instance v6, Lcom/facebook/FacebookException;

    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-direct {v6, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    move-object v5, v1

    .line 100
    :goto_2
    move-object v1, v4

    .line 101
    goto :goto_5

    .line 102
    :catchall_1
    move-exception p1

    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :catch_1
    move-exception v5

    .line 106
    :goto_3
    move-object v4, v1

    .line 107
    goto/16 :goto_7

    .line 108
    .line 109
    :cond_2
    :try_start_3
    const-string v2, "location"

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2}, Lcom/facebook/internal/Utility;->Kk(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-nez v4, :cond_3

    .line 120
    .line 121
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v4, Lcom/facebook/internal/UrlRedirectCache;->INSTANCE:Lcom/facebook/internal/UrlRedirectCache;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-static {v4, v2}, Lcom/facebook/internal/UrlRedirectCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-eqz v4, :cond_3

    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-nez v5, :cond_3

    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/internal/ImageRequest;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    new-instance v5, Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-direct {v5, v2, v6}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v4, v5, v0}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :catch_2
    move-exception v5

    .line 164
    move v2, v0

    .line 165
    goto :goto_3

    .line 166
    :cond_3
    :goto_4
    move v2, v0

    .line 167
    move-object v5, v1

    .line 168
    move-object v6, v5

    .line 169
    goto :goto_5

    .line 170
    :cond_4
    :try_start_4
    invoke-static {v3}, Lcom/facebook/internal/ImageResponseCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 171
    .line 172
    .line 173
    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 174
    :try_start_5
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 175
    .line 176
    .line 177
    move-result-object v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    move-object v6, v1

    .line 179
    goto :goto_2

    .line 180
    :goto_5
    invoke-static {v1}, Lcom/facebook/internal/Utility;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v3}, Lcom/facebook/internal/Utility;->Wwwwwwwwwwwwwwwww(Ljava/net/URLConnection;)V

    .line 184
    .line 185
    .line 186
    move-object v1, v5

    .line 187
    goto :goto_8

    .line 188
    :catchall_2
    move-exception p1

    .line 189
    move-object v3, v1

    .line 190
    goto :goto_6

    .line 191
    :catch_3
    move-exception v5

    .line 192
    move-object v3, v1

    .line 193
    move-object v4, v3

    .line 194
    goto :goto_7

    .line 195
    :cond_5
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    .line 196
    .line 197
    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 198
    .line 199
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 203
    :goto_6
    invoke-static {v1}, Lcom/facebook/internal/Utility;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v3}, Lcom/facebook/internal/Utility;->Wwwwwwwwwwwwwwwww(Ljava/net/URLConnection;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :goto_7
    invoke-static {v4}, Lcom/facebook/internal/Utility;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v3}, Lcom/facebook/internal/Utility;->Wwwwwwwwwwwwwwwww(Ljava/net/URLConnection;)V

    .line 214
    .line 215
    .line 216
    move-object v6, v5

    .line 217
    :goto_8
    if-eqz v2, :cond_6

    .line 218
    .line 219
    invoke-virtual {p0, p1, v6, v1, v0}, Lcom/facebook/internal/ImageDownloader;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 220
    .line 221
    .line 222
    :cond_6
    return-void
.end method
