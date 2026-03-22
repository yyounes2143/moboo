.class public final Lcom/changdu/component/webviewcache/internal/f;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static volatile b:Lcom/changdu/component/webviewcache/internal/f;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "CDWebViewCacheOkHttp"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 31
    .line 32
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->getInstance()Lcom/changdu/component/webviewcache/cookie/CDCookieManager;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;->getCookieJar(Landroid/content/Context;)Lokhttp3/CookieJar;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v1, Lokhttp3/Cache;

    .line 48
    .line 49
    new-instance v2, Ljava/io/File;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-wide/32 v3, 0x3200000

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    .line 66
    const-wide/16 v1, 0x5

    .line 67
    .line 68
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww(Z)Lokhttp3/OkHttpClient$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Z)Lokhttp3/OkHttpClient$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :try_start_0
    const-string v1, "SSL"

    .line 82
    .line 83
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v2, Lcom/changdu/component/webviewcache/internal/l;->b:Lcom/changdu/component/webviewcache/internal/k;

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    new-array v3, v3, [Ljavax/net/ssl/X509TrustManager;

    .line 91
    .line 92
    aput-object v2, v3, v0

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-virtual {v1, v0, v3, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0, v2}, Lokhttp3/OkHttpClient$Builder;->Illlllllllllllllllllllllll(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 103
    .line 104
    .line 105
    sget-object v0, Lcom/changdu/component/webviewcache/internal/l;->a:Lcom/changdu/component/webviewcache/internal/j;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->Kkkkkkkkkkkkkkkkkk(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    :catch_0
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/OkHttpClient;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/changdu/component/webviewcache/internal/f;->a:Lokhttp3/OkHttpClient;

    .line 115
    .line 116
    return-void
.end method
