.class public final Lokhttp3/internal/connection/Exchange;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/Exchange$RequestBodySink;,
        Lokhttp3/internal/connection/Exchange$ResponseBodySource;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0002PQB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\r\u0010\u0019\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u0017\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010#\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008&\u0010\'J\r\u0010(\u001a\u00020\u000e\u00a2\u0006\u0004\u0008(\u0010\u0017J\r\u0010)\u001a\u00020\u000e\u00a2\u0006\u0004\u0008)\u0010\u0017J\r\u0010*\u001a\u00020\u000e\u00a2\u0006\u0004\u0008*\u0010\u0017J\r\u0010+\u001a\u00020\u000e\u00a2\u0006\u0004\u0008+\u0010\u0017J9\u00103\u001a\u00028\u0000\"\n\u0008\u0000\u0010-*\u0004\u0018\u00010,2\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020\u00112\u0006\u00102\u001a\u00028\u0000\u00a2\u0006\u0004\u00083\u00104J\r\u00105\u001a\u00020\u000e\u00a2\u0006\u0004\u00085\u0010\u0017J\u0017\u00106\u001a\u00020\u000e2\u0006\u00102\u001a\u00020,H\u0002\u00a2\u0006\u0004\u00086\u00107R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00083\u00108\u001a\u0004\u00089\u0010:R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008*\u0010;\u001a\u0004\u0008<\u0010=R\u001a\u0010\u0007\u001a\u00020\u00068\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010>\u001a\u0004\u0008?\u0010@R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010AR$\u0010F\u001a\u00020\u00112\u0006\u0010B\u001a\u00020\u00118\u0000@BX\u0080\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010C\u001a\u0004\u0008D\u0010ER$\u0010H\u001a\u00020\u00112\u0006\u0010B\u001a\u00020\u00118\u0000@BX\u0080\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010C\u001a\u0004\u0008G\u0010ER\u001a\u0010M\u001a\u00020I8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00089\u0010J\u001a\u0004\u0008K\u0010LR\u0014\u0010O\u001a\u00020\u00118@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010E\u00a8\u0006R"
    }
    d2 = {
        "Lokhttp3/internal/connection/Exchange;",
        "",
        "Lokhttp3/internal/connection/RealCall;",
        "call",
        "Lokhttp3/EventListener;",
        "eventListener",
        "Lokhttp3/internal/connection/ExchangeFinder;",
        "finder",
        "Lokhttp3/internal/http/ExchangeCodec;",
        "codec",
        "<init>",
        "(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V",
        "Lokhttp3/Request;",
        "request",
        "",
        "Wwwwwwwwwwww",
        "(Lokhttp3/Request;)V",
        "",
        "duplex",
        "Lokio/Sink;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/Request;Z)Lokio/Sink;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwww",
        "expectContinue",
        "Lokhttp3/Response$Builder;",
        "Wwwwwwwwwwwwwwwww",
        "(Z)Lokhttp3/Response$Builder;",
        "Lokhttp3/Response;",
        "response",
        "Wwwwwwwwwwwwwwww",
        "(Lokhttp3/Response;)V",
        "Lokhttp3/ResponseBody;",
        "Wwwwwwwwwwwwwwwwww",
        "(Lokhttp3/Response;)Lokhttp3/ResponseBody;",
        "Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "Wwwwwwwwwwwwwwwwwwwww",
        "()Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "Wwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/io/IOException;",
        "E",
        "",
        "bytesRead",
        "responseDone",
        "requestDone",
        "e",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(JZZLjava/io/IOException;)Ljava/io/IOException;",
        "Wwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwww",
        "(Ljava/io/IOException;)V",
        "Lokhttp3/internal/connection/RealCall;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lokhttp3/internal/connection/RealCall;",
        "Lokhttp3/EventListener;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lokhttp3/EventListener;",
        "Lokhttp3/internal/connection/ExchangeFinder;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lokhttp3/internal/connection/ExchangeFinder;",
        "Lokhttp3/internal/http/ExchangeCodec;",
        "<set-?>",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "()Z",
        "isDuplex",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "hasFailure",
        "Lokhttp3/internal/connection/RealConnection;",
        "Lokhttp3/internal/connection/RealConnection;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lokhttp3/internal/connection/RealConnection;",
        "connection",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "isCoalescedConnection",
        "RequestBodySink",
        "ResponseBodySource",
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
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/ExchangeFinder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V
    .locals 0
    .param p1    # Lokhttp3/internal/connection/RealCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/EventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokhttp3/internal/connection/ExchangeFinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokhttp3/internal/http/ExchangeCodec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 7
    .line 8
    iput-object p3, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/ExchangeFinder;

    .line 9
    .line 10
    iput-object p4, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 11
    .line 12
    invoke-interface {p4}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/RealConnection;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealConnection;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwww(Lokhttp3/Request;)V
    .locals 2
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->Wwwwwwwwwwwwww(Lokhttp3/Call;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 14
    .line 15
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwww(Lokhttp3/Call;Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p1

    .line 22
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 23
    .line 24
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwww(Ljava/io/IOException;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public final Wwwwwwwwwwwww()V
    .locals 6

    .line 1
    const/4 v4, 0x1

    .line 2
    const/4 v5, 0x0

    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    move-object v0, p0

    .line 7
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JZZLjava/io/IOException;)Ljava/io/IOException;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final Wwwwwwwwwwwwww(Ljava/io/IOException;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/ExchangeFinder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/ExchangeFinder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/IOException;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 10
    .line 11
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/RealConnection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/connection/RealConnection;->Kkkkkkkkkkkkkkkkkkkkkkkk(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final Wwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->Wwwwwwwww(Lokhttp3/Call;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwww(Lokhttp3/Response;)V
    .locals 2
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->Wwwwwwwwww(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwww(Z)Lokhttp3/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)Lokhttp3/Response$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1, p0}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/connection/Exchange;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 16
    .line 17
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->Wwwwwwwwwww(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwww(Ljava/io/IOException;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 4
    .param p1    # Lokhttp3/Response;
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
    :try_start_0
    const-string v0, "Content-Type"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v0, v2, v1, v2}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkk(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object v3, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 16
    .line 17
    invoke-interface {v3, p1}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokio/Source;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v3, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 22
    .line 23
    invoke-direct {v3, p0, p1, v1, v2}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lokhttp3/internal/http/RealResponseBody;

    .line 27
    .line 28
    invoke-static {v3}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)Lokio/BufferedSource;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {p1, v0, v1, v2, v3}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 38
    .line 39
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->Wwwwwwwwwww(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwww(Ljava/io/IOException;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwww()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual {v0, p0, v3, v1, v2}, Lokhttp3/internal/connection/RealCall;->Wwwwwwwwwwwwwww(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/RealConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwww()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/ws/RealWebSocket$Streams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->Wwwwwwww()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 7
    .line 8
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/RealConnection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwww(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/ExchangeFinder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealConnection;

    .line 16
    .line 17
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->Wwwwwww()Lokhttp3/Route;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    xor-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/ExchangeFinder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/ExchangeFinder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/EventListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/RealConnection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealConnection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/RealCall;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 9
    .line 10
    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwww(Ljava/io/IOException;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 9
    .line 10
    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwww(Ljava/io/IOException;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, p0, v1, v1, v2}, Lokhttp3/internal/connection/RealCall;->Wwwwwwwwwwwwwww(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Z)Lokio/Sink;
    .locals 3
    .param p1    # Lokhttp3/Request;
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
    iput-boolean p2, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/RequestBody;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lokhttp3/RequestBody;->contentLength()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object p2, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 12
    .line 13
    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 14
    .line 15
    invoke-virtual {p2, v2}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwww(Lokhttp3/Call;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 19
    .line 20
    invoke-interface {p2, p1, v0, v1}, Lokhttp3/internal/http/ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;J)Lokio/Sink;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 25
    .line 26
    invoke-direct {p2, p0, p1, v0, v1}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Sink;J)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(JZZTE;)TE;"
        }
    .end annotation

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p5}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwww(Ljava/io/IOException;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p4, :cond_2

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 11
    .line 12
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p5}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 19
    .line 20
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwww(Lokhttp3/Call;J)V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    .line 26
    .line 27
    if-eqz p5, :cond_3

    .line 28
    .line 29
    iget-object p1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 30
    .line 31
    iget-object p2, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 32
    .line 33
    invoke-virtual {p1, p2, p5}, Lokhttp3/EventListener;->Wwwwwwwwwww(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 38
    .line 39
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/EventListener;->Wwwwwwwwwwwww(Lokhttp3/Call;J)V

    .line 42
    .line 43
    .line 44
    :cond_4
    :goto_1
    iget-object p1, p0, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealCall;

    .line 45
    .line 46
    invoke-virtual {p1, p0, p4, p3, p5}, Lokhttp3/internal/connection/RealCall;->Wwwwwwwwwwwwwww(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method
