.class public Lcom/changdu/component/webviewcache/CDWebResourceResponse;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;

.field public d:Z

.field public e:Z

.field public f:[B

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->d:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->e:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->g:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getIsFromDiskCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public getOriginBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->f:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCacheByOurselves()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCacheable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->a:I

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0xcb

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0xcc

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0xce

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCacheByOurselves(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsFromDiskCache(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public setModified(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOriginBytes([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->f:[B

    .line 2
    .line 3
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method
