.class public final Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J1\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u000e\u001a\n\u0018\u00010\u000cj\u0004\u0018\u0001`\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;",
        "Lokhttp3/Interceptor;",
        "<init>",
        "()V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "Lokhttp3/Request;",
        "request",
        "response",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "exception",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/Exception;)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/Request;)Ljava/lang/String;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lkotlinx/coroutines/CoroutineScope;",
        "mLoaderScope",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/changdu/mobovideo/utils/CoroutineUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/CoroutineUtil;

    .line 5
    .line 6
    const-string v1, "VideoHttpErrorReportInterceptor"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/changdu/mobovideo/utils/CoroutineUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;Lokhttp3/Request;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    new-instance v1, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v3, p0

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    move-object v2, p3

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;-><init>(Ljava/lang/Exception;Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;Lokhttp3/Request;Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v3, v1

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v5, "request: \n  method = "

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "\n  url = "

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "\n  request header = "

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/RequestBody;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    new-instance v1, Lokio/Buffer;

    .line 55
    .line 56
    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const-string v2, "UTF-8"

    .line 67
    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    :try_start_1
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1, v2}, Lokhttp3/MediaType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_0
    invoke-virtual {v1, p1}, Lokio/Buffer;->Wwwwwwwwww(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 p1, 0x0

    .line 89
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, "\n  request params = "

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    return-object p1

    .line 110
    :catch_0
    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    move-object v4, v1

    .line 16
    move-object v1, p1

    .line 17
    move-object p1, v4

    .line 18
    :goto_0
    if-nez v1, :cond_0

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x190

    .line 27
    .line 28
    if-lt v2, v3, :cond_1

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    if-nez v1, :cond_3

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_3
    throw v1
.end method
