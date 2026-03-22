.class public final Lcom/changdu/component/webviewcache/internal/e;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/webviewcache/WebResourceInterceptor;


# instance fields
.field public final a:Lcom/changdu/component/webviewcache/internal/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    iput-object v0, p0, Lcom/changdu/component/webviewcache/internal/e;->a:Lcom/changdu/component/webviewcache/internal/g;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final load(Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->getRequest()Lcom/changdu/component/webviewcache/CacheRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/changdu/component/webviewcache/internal/h;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v0, v2}, Lcom/changdu/component/webviewcache/internal/h;-><init>(Lcom/changdu/component/webviewcache/CacheRequest;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/changdu/component/webviewcache/internal/e;->a:Lcom/changdu/component/webviewcache/internal/g;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/changdu/component/webviewcache/internal/g;->a(Lcom/changdu/component/webviewcache/internal/h;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    invoke-virtual {p1, v0}, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->process(Lcom/changdu/component/webviewcache/CacheRequest;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
