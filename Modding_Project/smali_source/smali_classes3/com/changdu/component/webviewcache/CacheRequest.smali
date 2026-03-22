.class public Lcom/changdu/component/webviewcache/CacheRequest;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private cacheMode:Lcom/changdu/component/webviewcache/config/CacheMode;

.field private key:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAgent:Ljava/lang/String;

.field private mWebViewRawCacheMode:I

.field private mimeType:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static generateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    const-string v0, "MD5"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    array-length v2, p0

    .line 26
    if-ge v1, v2, :cond_2

    .line 27
    .line 28
    aget-byte v2, p0, v1

    .line 29
    .line 30
    if-gez v2, :cond_0

    .line 31
    .line 32
    add-int/lit16 v2, v2, 0x100

    .line 33
    .line 34
    :cond_0
    const/16 v3, 0x10

    .line 35
    .line 36
    if-ge v2, v3, :cond_1

    .line 37
    .line 38
    const-string v3, "0"

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    const-string p0, ""

    .line 67
    .line 68
    return-object p0
.end method


# virtual methods
.method public getCacheMode()Lcom/changdu/component/webviewcache/config/CacheMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CacheRequest;->cacheMode:Lcom/changdu/component/webviewcache/config/CacheMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CacheRequest;->mHeaders:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CacheRequest;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CacheRequest;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CacheRequest;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CacheRequest;->mUserAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebViewRawCacheMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/component/webviewcache/CacheRequest;->mWebViewRawCacheMode:I

    .line 2
    .line 3
    return v0
.end method

.method public setCacheMode(Lcom/changdu/component/webviewcache/config/CacheMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CacheRequest;->cacheMode:Lcom/changdu/component/webviewcache/config/CacheMode;

    .line 2
    .line 3
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
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
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CacheRequest;->mHeaders:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CacheRequest;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CacheRequest;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/changdu/component/webviewcache/CacheRequest;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CacheRequest;->key:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CacheRequest;->mUserAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWebViewRawCacheMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/changdu/component/webviewcache/CacheRequest;->mWebViewRawCacheMode:I

    .line 2
    .line 3
    return-void
.end method
