.class public final Lcom/changdu/component/webviewcache/internal/d;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/webviewcache/Destroyable;
.implements Lcom/changdu/component/webviewcache/WebResourceInterceptor;


# instance fields
.field public final a:Lcom/changdu/component/webviewcache/internal/g;

.field public final b:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/changdu/component/webviewcache/config/CacheConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/changdu/component/webviewcache/internal/g;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/changdu/component/webviewcache/internal/g;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/changdu/component/webviewcache/internal/d;->a:Lcom/changdu/component/webviewcache/internal/g;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/changdu/component/webviewcache/config/CacheConfig;->getFilter()Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-object p1, p0, Lcom/changdu/component/webviewcache/internal/d;->b:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/internal/d;->b:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/changdu/component/webviewcache/config/MimeTypeFilter;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final load(Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->getRequest()Lcom/changdu/component/webviewcache/CacheRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/CacheRequest;->getMimeType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/changdu/component/webviewcache/internal/d;->b:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 16
    .line 17
    const-string v2, "text/html"

    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/changdu/component/webviewcache/config/MimeTypeFilter;->isFilter(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/changdu/component/webviewcache/internal/d;->b:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 25
    .line 26
    invoke-interface {v2, v1}, Lcom/changdu/component/webviewcache/config/MimeTypeFilter;->isFilter(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :goto_0
    new-instance v2, Lcom/changdu/component/webviewcache/internal/h;

    .line 31
    .line 32
    invoke-direct {v2, v0, v1}, Lcom/changdu/component/webviewcache/internal/h;-><init>(Lcom/changdu/component/webviewcache/CacheRequest;Z)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/changdu/component/webviewcache/internal/d;->a:Lcom/changdu/component/webviewcache/internal/g;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/changdu/component/webviewcache/internal/g;->a(Lcom/changdu/component/webviewcache/internal/h;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    invoke-virtual {p1, v0}, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->process(Lcom/changdu/component/webviewcache/CacheRequest;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method
