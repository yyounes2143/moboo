.class final Lcom/tencent/liteav/base/http/HttpClientAndroid$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/base/http/HttpClientAndroid;->createConnectionByNetworkType(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/Proxy;

.field final synthetic b:[Ljava/net/HttpURLConnection;

.field final synthetic c:Ljava/net/URL;

.field final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field final synthetic e:Lcom/tencent/liteav/base/http/HttpClientAndroid;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/base/http/HttpClientAndroid;Ljava/net/Proxy;[Ljava/net/HttpURLConnection;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->e:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->a:Ljava/net/Proxy;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->b:[Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->c:Ljava/net/URL;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->d:Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->e:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->access$000(Lcom/tencent/liteav/base/http/HttpClientAndroid;)Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->j:Lcom/tencent/liteav/base/http/HttpClientAndroid$d;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->access$102(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)Lcom/tencent/liteav/base/http/HttpClientAndroid$d;

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "("

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->e:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ")createConnectionSpecifyNetwork onAvailable."

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "HttpClientAndroid"

    .line 38
    .line 39
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->a:Ljava/net/Proxy;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->b:[Ljava/net/HttpURLConnection;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->c:Ljava/net/URL;

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 56
    .line 57
    aput-object p1, v0, v3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    iget-object v4, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->b:[Ljava/net/HttpURLConnection;

    .line 65
    .line 66
    iget-object v5, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->c:Ljava/net/URL;

    .line 67
    .line 68
    invoke-virtual {p1, v5, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 73
    .line 74
    aput-object p1, v4, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->d:Ljava/util/concurrent/CountDownLatch;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->e:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ")createConnectionSpecifyNetwork failed. error: "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/tencent/liteav/base/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->d:Ljava/util/concurrent/CountDownLatch;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 119
    .line 120
    .line 121
    throw p1
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "("

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->e:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ")createConnectionSpecifyNetwork onLost."

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "HttpClientAndroid"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$2;->d:Ljava/util/concurrent/CountDownLatch;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
