.class public Lcom/changdu/component/webviewcache/cookie/CDCookieManager;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/webviewcache/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/webviewcache/cookie/CDCookieManager$SingletonHolder;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public c:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public static getInstance()Lcom/changdu/component/webviewcache/cookie/CDCookieManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager$SingletonHolder;->a:Lcom/changdu/component/webviewcache/cookie/CDCookieManager;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public addRequestCookieInterceptor(Lcom/changdu/component/webviewcache/cookie/CookieInterceptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public addResponseCookieInterceptor(Lcom/changdu/component/webviewcache/cookie/CookieInterceptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->c:Lokhttp3/CookieJar;

    .line 13
    .line 14
    return-void
.end method

.method public getCookieJar(Landroid/content/Context;)Lokhttp3/CookieJar;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->c:Lokhttp3/CookieJar;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lcom/changdu/component/webviewcache/cookie/CookieJarImpl;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/changdu/component/webviewcache/cookie/CookieJarImpl;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public setCookieJar(Lokhttp3/CookieJar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->c:Lokhttp3/CookieJar;

    .line 2
    .line 3
    return-void
.end method
