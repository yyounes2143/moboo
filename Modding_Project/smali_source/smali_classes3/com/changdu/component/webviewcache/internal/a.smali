.class public final Lcom/changdu/component/webviewcache/internal/a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/webviewcache/Destroyable;


# instance fields
.field public a:Lcom/changdu/component/webviewcache/config/CacheMode;

.field public b:Lcom/changdu/component/webviewcache/config/CacheConfig;

.field public c:Lcom/changdu/component/webviewcache/internal/i;

.field public d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/changdu/component/webviewcache/internal/a;->d:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebResourceRequest;ILjava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/internal/a;->a:Lcom/changdu/component/webviewcache/config/CacheMode;

    sget-object v1, Lcom/changdu/component/webviewcache/config/CacheMode;->DEFAULT:Lcom/changdu/component/webviewcache/config/CacheMode;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    const/16 v2, 0x23

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/16 v2, 0x3f

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 8
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/16 v2, 0x2f

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    add-int/2addr v2, v3

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x2e

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    add-int/2addr v2, v3

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_4
    const-string v1, ""

    .line 15
    :goto_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/changdu/component/webviewcache/CacheRequest;

    invoke-direct {v2}, Lcom/changdu/component/webviewcache/CacheRequest;-><init>()V

    .line 17
    invoke-virtual {v2, v0}, Lcom/changdu/component/webviewcache/CacheRequest;->setUrl(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v1}, Lcom/changdu/component/webviewcache/CacheRequest;->setMimeType(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/changdu/component/webviewcache/internal/a;->a:Lcom/changdu/component/webviewcache/config/CacheMode;

    invoke-virtual {v2, v0}, Lcom/changdu/component/webviewcache/CacheRequest;->setCacheMode(Lcom/changdu/component/webviewcache/config/CacheMode;)V

    .line 20
    invoke-virtual {v2, p3}, Lcom/changdu/component/webviewcache/CacheRequest;->setUserAgent(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, p2}, Lcom/changdu/component/webviewcache/CacheRequest;->setWebViewRawCacheMode(I)V

    .line 22
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Lcom/changdu/component/webviewcache/CacheRequest;->setHeaders(Ljava/util/Map;)V

    .line 24
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/internal/a;->a()Lcom/changdu/component/webviewcache/internal/i;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {v2}, Lcom/changdu/component/webviewcache/CacheRequest;->getCacheMode()Lcom/changdu/component/webviewcache/config/CacheMode;

    move-result-object p2

    sget-object p3, Lcom/changdu/component/webviewcache/config/CacheMode;->FORCE:Lcom/changdu/component/webviewcache/config/CacheMode;

    if-ne p2, p3, :cond_5

    move p2, v3

    goto :goto_1

    :cond_5
    move p2, v4

    .line 26
    :goto_1
    iget-object p3, p1, Lcom/changdu/component/webviewcache/internal/i;->a:Landroid/content/Context;

    .line 27
    iget-object v0, p1, Lcom/changdu/component/webviewcache/internal/i;->b:Lcom/changdu/component/webviewcache/config/CacheConfig;

    if-eqz p2, :cond_9

    .line 28
    iget-object p2, p1, Lcom/changdu/component/webviewcache/internal/i;->d:Ljava/util/ArrayList;

    if-nez p2, :cond_8

    .line 29
    iget-object p2, p1, Lcom/changdu/component/webviewcache/internal/i;->c:Ljava/util/ArrayList;

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    add-int/lit8 v4, v4, 0x3

    .line 30
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    iget-object v1, p1, Lcom/changdu/component/webviewcache/internal/i;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 32
    iget-object v1, p1, Lcom/changdu/component/webviewcache/internal/i;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    :cond_7
    new-instance v1, Lcom/changdu/component/webviewcache/internal/c;

    invoke-direct {v1, v0}, Lcom/changdu/component/webviewcache/internal/c;-><init>(Lcom/changdu/component/webviewcache/config/CacheConfig;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/changdu/component/webviewcache/internal/d;

    invoke-direct {v1, p3, v0}, Lcom/changdu/component/webviewcache/internal/d;-><init>(Landroid/content/Context;Lcom/changdu/component/webviewcache/config/CacheConfig;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iput-object p2, p1, Lcom/changdu/component/webviewcache/internal/i;->d:Ljava/util/ArrayList;

    .line 36
    :cond_8
    iget-object p2, p1, Lcom/changdu/component/webviewcache/internal/i;->d:Ljava/util/ArrayList;

    goto :goto_4

    .line 37
    :cond_9
    iget-object p2, p1, Lcom/changdu/component/webviewcache/internal/i;->e:Ljava/util/ArrayList;

    if-nez p2, :cond_c

    .line 38
    iget-object p2, p1, Lcom/changdu/component/webviewcache/internal/i;->c:Ljava/util/ArrayList;

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3
    add-int/2addr v4, v3

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    iget-object v0, p1, Lcom/changdu/component/webviewcache/internal/i;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 41
    iget-object v0, p1, Lcom/changdu/component/webviewcache/internal/i;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_b
    new-instance v0, Lcom/changdu/component/webviewcache/internal/e;

    invoke-direct {v0, p3}, Lcom/changdu/component/webviewcache/internal/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iput-object p2, p1, Lcom/changdu/component/webviewcache/internal/i;->e:Ljava/util/ArrayList;

    .line 44
    :cond_c
    iget-object p2, p1, Lcom/changdu/component/webviewcache/internal/i;->e:Ljava/util/ArrayList;

    .line 45
    :goto_4
    new-instance p3, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;

    invoke-direct {p3, p2}, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;-><init>(Ljava/util/List;)V

    .line 46
    invoke-virtual {p3, v2}, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->process(Lcom/changdu/component/webviewcache/CacheRequest;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;

    move-result-object p2

    .line 47
    iget-object p1, p1, Lcom/changdu/component/webviewcache/internal/i;->f:Lcom/changdu/component/webviewcache/internal/m;

    invoke-virtual {v2}, Lcom/changdu/component/webviewcache/CacheRequest;->getMimeType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Lcom/changdu/component/webviewcache/internal/m;->a(Lcom/changdu/component/webviewcache/CDWebResourceResponse;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a()Lcom/changdu/component/webviewcache/internal/i;
    .locals 3

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/changdu/component/webviewcache/internal/a;->c:Lcom/changdu/component/webviewcache/internal/i;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/changdu/component/webviewcache/internal/i;

    iget-object v1, p0, Lcom/changdu/component/webviewcache/internal/a;->d:Landroid/content/Context;

    .line 50
    iget-object v2, p0, Lcom/changdu/component/webviewcache/internal/a;->b:Lcom/changdu/component/webviewcache/config/CacheConfig;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v2, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;

    invoke-direct {v2, v1}, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->build()Lcom/changdu/component/webviewcache/config/CacheConfig;

    move-result-object v2

    .line 52
    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/changdu/component/webviewcache/internal/i;-><init>(Landroid/content/Context;Lcom/changdu/component/webviewcache/config/CacheConfig;)V

    iput-object v0, p0, Lcom/changdu/component/webviewcache/internal/a;->c:Lcom/changdu/component/webviewcache/internal/i;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 53
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/internal/a;->c:Lcom/changdu/component/webviewcache/internal/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final destroy()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/internal/a;->c:Lcom/changdu/component/webviewcache/internal/i;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/changdu/component/webviewcache/internal/i;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    move v4, v2

    .line 23
    :cond_1
    :goto_0
    if-ge v4, v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    check-cast v5, Lcom/changdu/component/webviewcache/WebResourceInterceptor;

    .line 32
    .line 33
    instance-of v6, v5, Lcom/changdu/component/webviewcache/Destroyable;

    .line 34
    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    check-cast v5, Lcom/changdu/component/webviewcache/Destroyable;

    .line 38
    .line 39
    invoke-interface {v5}, Lcom/changdu/component/webviewcache/Destroyable;->destroy()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_4

    .line 45
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/changdu/component/webviewcache/internal/i;->d:Ljava/util/ArrayList;

    .line 49
    .line 50
    if-eqz v1, :cond_7

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    :cond_5
    :goto_2
    if-ge v2, v3, :cond_6

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    check-cast v4, Lcom/changdu/component/webviewcache/WebResourceInterceptor;

    .line 72
    .line 73
    instance-of v5, v4, Lcom/changdu/component/webviewcache/Destroyable;

    .line 74
    .line 75
    if-eqz v5, :cond_5

    .line 76
    .line 77
    check-cast v4, Lcom/changdu/component/webviewcache/Destroyable;

    .line 78
    .line 79
    invoke-interface {v4}, Lcom/changdu/component/webviewcache/Destroyable;->destroy()V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    .line 85
    .line 86
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/changdu/component/webviewcache/internal/i;->c:Ljava/util/ArrayList;

    .line 87
    .line 88
    if-eqz v1, :cond_8

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    :cond_8
    monitor-exit v0

    .line 94
    goto :goto_5

    .line 95
    :goto_4
    monitor-exit v0

    .line 96
    throw v1

    .line 97
    :cond_9
    :goto_5
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/changdu/component/webviewcache/internal/a;->b:Lcom/changdu/component/webviewcache/config/CacheConfig;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/changdu/component/webviewcache/internal/a;->c:Lcom/changdu/component/webviewcache/internal/i;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/changdu/component/webviewcache/internal/a;->d:Landroid/content/Context;

    .line 103
    .line 104
    return-void
.end method
