.class public final Lokhttp3/internal/ws/RealWebSocket$connect$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "okhttp3/internal/ws/RealWebSocket$connect$1",
        "Lokhttp3/Callback;",
        "Lokhttp3/Call;",
        "call",
        "Lokhttp3/Response;",
        "response",
        "",
        "onResponse",
        "(Lokhttp3/Call;Lokhttp3/Response;)V",
        "Ljava/io/IOException;",
        "e",
        "onFailure",
        "(Lokhttp3/Call;Ljava/io/IOException;)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Request;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkk()Lokhttp3/internal/connection/Exchange;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 6
    .line 7
    invoke-virtual {v0, p2, p1}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    sget-object v0, Lokhttp3/internal/ws/WebSocketExtensions;->Companion:Lokhttp3/internal/ws/WebSocketExtensions$Companion;

    .line 15
    .line 16
    invoke-virtual {p2}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkk()Lokhttp3/Headers;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 25
    .line 26
    invoke-static {v1, v0}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/internal/ws/WebSocketExtensions;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 30
    .line 31
    invoke-static {v1, v0}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/internal/ws/WebSocketExtensions;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_1
    invoke-static {v0}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/ws/RealWebSocket;)Ljava/util/ArrayDeque;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 45
    .line 46
    .line 47
    const-string v1, "unexpected Sec-WebSocket-Extensions in response header"

    .line 48
    .line 49
    const/16 v2, 0x3f2

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0

    .line 58
    throw p1

    .line 59
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, " WebSocket "

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Request;

    .line 75
    .line 76
    invoke-virtual {v1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 92
    .line 93
    invoke-virtual {v1, v0, p1}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 97
    .line 98
    invoke-virtual {p1}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwwwwww()Lokhttp3/WebSocketListener;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 103
    .line 104
    invoke-virtual {p1, v0, p2}, Lokhttp3/WebSocketListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 108
    .line 109
    invoke-virtual {p1}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwww()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :catch_0
    move-exception p1

    .line 114
    iget-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p2, p1, v0}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :catch_1
    move-exception v0

    .line 122
    if-nez p1, :cond_1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {p1}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwww()V

    .line 126
    .line 127
    .line 128
    :goto_1
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/RealWebSocket;

    .line 129
    .line 130
    invoke-virtual {p1, v0, p2}, Lokhttp3/internal/ws/RealWebSocket;->Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method
