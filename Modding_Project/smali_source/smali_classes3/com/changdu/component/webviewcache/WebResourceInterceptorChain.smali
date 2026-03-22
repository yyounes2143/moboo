.class public Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final a:Ljava/util/List;

.field public b:I

.field public c:Lcom/changdu/component/webviewcache/CacheRequest;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/changdu/component/webviewcache/WebResourceInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->b:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->a:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getRequest()Lcom/changdu/component/webviewcache/CacheRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->c:Lcom/changdu/component/webviewcache/CacheRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public process(Lcom/changdu/component/webviewcache/CacheRequest;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->b:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->a:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->c:Lcom/changdu/component/webviewcache/CacheRequest;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->a:Ljava/util/List;

    .line 20
    .line 21
    iget v0, p0, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->b:I

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/changdu/component/webviewcache/WebResourceInterceptor;

    .line 28
    .line 29
    invoke-interface {p1, p0}, Lcom/changdu/component/webviewcache/WebResourceInterceptor;->load(Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method
