.class final synthetic Lokio/Okio__JvmOkioKt;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0011\u0010\u0006\u001a\u00020\u0005*\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u0011\u0010\t\u001a\u00020\u0001*\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\n\u001a\u0011\u0010\u000b\u001a\u00020\u0005*\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a\u001d\u0010\u0010\u001a\u00020\u0001*\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a\u0011\u0010\u0012\u001a\u00020\u0001*\u00020\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a\u0011\u0010\u0014\u001a\u00020\u0005*\u00020\r\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\"\u001c\u0010\u001a\u001a\n \u0017*\u0004\u0018\u00010\u00160\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\"\u001c\u0010\u001f\u001a\u00020\u000e*\u00060\u001bj\u0002`\u001c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Ljava/io/OutputStream;",
        "Lokio/Sink;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/io/OutputStream;)Lokio/Sink;",
        "Ljava/io/InputStream;",
        "Lokio/Source;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/io/InputStream;)Lokio/Source;",
        "Ljava/net/Socket;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/net/Socket;)Lokio/Sink;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/net/Socket;)Lokio/Source;",
        "Ljava/io/File;",
        "",
        "append",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/io/File;Z)Lokio/Sink;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/io/File;)Lokio/Sink;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/io/File;)Lokio/Source;",
        "Ljava/util/logging/Logger;",
        "kotlin.jvm.PlatformType",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/logging/Logger;",
        "logger",
        "Ljava/lang/AssertionError;",
        "Lkotlin/AssertionError;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/AssertionError;)Z",
        "isAndroidGetsocknameError",
        "okio"
    }
    k = 0x5
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
    xs = "okio/Okio"
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "okio.Okio"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lokio/Okio__JvmOkioKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/logging/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)Lokio/Source;
    .locals 2
    .param p0    # Ljava/net/Socket;
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
    new-instance v0, Lokio/SocketAsyncTimeout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokio/InputStreamSource;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v1, p0, v0}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->Wwwwww(Lokio/Source;)Lokio/Source;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/InputStream;)Lokio/Source;
    .locals 2
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/InputStreamSource;

    .line 2
    .line 3
    new-instance v1, Lokio/Timeout;

    .line 4
    .line 5
    invoke-direct {v1}, Lokio/Timeout;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Lokio/Source;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/InputStreamSource;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Z)Lokio/Sink;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)Lokio/Sink;
    .locals 2
    .param p0    # Ljava/net/Socket;
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
    new-instance v0, Lokio/SocketAsyncTimeout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokio/OutputStreamSink;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v1, p0, v0}, Lokio/OutputStreamSink;-><init>(Ljava/io/OutputStream;Lokio/Timeout;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->Wwwwwww(Lokio/Sink;)Lokio/Sink;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/OutputStream;)Lokio/Sink;
    .locals 2
    .param p0    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/OutputStreamSink;

    .line 2
    .line 3
    new-instance v1, Lokio/Timeout;

    .line 4
    .line 5
    invoke-direct {v1}, Lokio/Timeout;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lokio/OutputStreamSink;-><init>(Ljava/io/OutputStream;Lokio/Timeout;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Z)Lokio/Sink;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/OutputStream;)Lokio/Sink;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/AssertionError;)Z
    .locals 4
    .param p0    # Ljava/lang/AssertionError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    const-string v3, "getsockname failed"

    .line 17
    .line 18
    invoke-static {p0, v3, v1, v0, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p0, v1

    .line 24
    :goto_0
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    return v1
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Lokio/Sink;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/OutputStream;)Lokio/Sink;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lokio/Okio__JvmOkioKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method
