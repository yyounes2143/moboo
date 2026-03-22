.class public final Lcom/changdu/component/webviewcache/internal/h;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/util/Map;

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CacheRequest;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/changdu/component/webviewcache/internal/h;->b:Z

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CacheRequest;->getUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/changdu/component/webviewcache/internal/h;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CacheRequest;->getHeaders()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/changdu/component/webviewcache/internal/h;->c:Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CacheRequest;->getUserAgent()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/changdu/component/webviewcache/internal/h;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CacheRequest;->getWebViewRawCacheMode()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/changdu/component/webviewcache/internal/h;->e:I

    .line 29
    .line 30
    return-void
.end method
