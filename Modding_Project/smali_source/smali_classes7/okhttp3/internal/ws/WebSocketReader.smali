.class public final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001@B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u000eJ\u000f\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u000f\u0010\u0014\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0008\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0016R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0016R\u0016\u0010 \u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0016R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010*\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010\u0016R\u0016\u0010,\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010\u0016R\u0016\u0010.\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010\u0016R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u00100R\u0014\u00103\u001a\u00020/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00100R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u0010;\u001a\u0004\u0018\u0001088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010?\u001a\u0004\u0018\u00010<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>\u00a8\u0006A"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketReader;",
        "Ljava/io/Closeable;",
        "",
        "isClient",
        "Lokio/BufferedSource;",
        "source",
        "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;",
        "frameCallback",
        "perMessageDeflate",
        "noContextTakeover",
        "<init>",
        "(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "close",
        "Wwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "Kkkkkkkkkkkkkkkkkkkkk",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/BufferedSource;",
        "getSource",
        "()Lokio/BufferedSource;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwww",
        "closed",
        "",
        "Wwwwwwwwwwwwwwwwwww",
        "I",
        "opcode",
        "",
        "Wwwwwwwwwwwwwwwwww",
        "J",
        "frameLength",
        "Wwwwwwwwwwwwwwwww",
        "isFinalFrame",
        "Wwwwwwwwwwwwwwww",
        "isControlFrame",
        "Wwwwwwwwwwwwwww",
        "readingCompressedMessage",
        "Lokio/Buffer;",
        "Lokio/Buffer;",
        "controlFrameBuffer",
        "Wwwwwwwwwwwww",
        "messageFrameBuffer",
        "Lokhttp3/internal/ws/MessageInflater;",
        "Wwwwwwwwwwww",
        "Lokhttp3/internal/ws/MessageInflater;",
        "messageInflater",
        "",
        "Wwwwwwwwwww",
        "[B",
        "maskKey",
        "Lokio/Buffer$UnsafeCursor;",
        "Wwwwwwwwww",
        "Lokio/Buffer$UnsafeCursor;",
        "maskCursor",
        "FrameCallback",
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
.field public final Wwwwwwwwww:Lokio/Buffer$UnsafeCursor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwww:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwww:Lokhttp3/internal/ws/MessageInflater;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwww:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwww:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method public constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V
    .locals 0
    .param p2    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 7
    .line 8
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 9
    .line 10
    iput-boolean p4, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    new-instance p2, Lokio/Buffer;

    .line 15
    .line 16
    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwww:Lokio/Buffer;

    .line 20
    .line 21
    new-instance p2, Lokio/Buffer;

    .line 22
    .line 23
    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwww:Lokio/Buffer;

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    move-object p3, p2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p3, 0x4

    .line 34
    new-array p3, p3, [B

    .line 35
    .line 36
    :goto_0
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwww:[B

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance p2, Lokio/Buffer$UnsafeCursor;

    .line 42
    .line 43
    invoke-direct {p2}, Lokio/Buffer$UnsafeCursor;-><init>()V

    .line 44
    .line 45
    .line 46
    :goto_1
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkkkkkkkkk()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwww()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwww:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkk()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    .line 11
    .line 12
    const-string v2, "Unknown opcode: "

    .line 13
    .line 14
    invoke-static {v0}, Lokhttp3/internal/Util;->Kkkkkkkkkkkkkkk(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->Kkkkkkkkkkkkkkkkkkkkkkk()V

    .line 27
    .line 28
    .line 29
    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwww:Z

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwww:Lokhttp3/internal/ws/MessageInflater;

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    new-instance v2, Lokhttp3/internal/ws/MessageInflater;

    .line 38
    .line 39
    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 40
    .line 41
    invoke-direct {v2, v3}, Lokhttp3/internal/ws/MessageInflater;-><init>(Z)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwww:Lokhttp3/internal/ws/MessageInflater;

    .line 45
    .line 46
    :cond_2
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwww:Lokio/Buffer;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    if-ne v0, v1, :cond_4

    .line 52
    .line 53
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 54
    .line 55
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwww:Lokio/Buffer;

    .line 56
    .line 57
    invoke-virtual {v1}, Lokio/Buffer;->Kkkkk()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 66
    .line 67
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwww:Lokio/Buffer;

    .line 68
    .line 69
    invoke-virtual {v1}, Lokio/Buffer;->Wwwwwww()Lokio/ByteString;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkk()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwww:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 14
    .line 15
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwww:Lokio/Buffer;

    .line 16
    .line 17
    invoke-interface {v2, v3, v0, v1}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwww:Lokio/Buffer;

    .line 25
    .line 26
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lokio/Buffer;->Kkkkkkkk(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 32
    .line 33
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwww:Lokio/Buffer;

    .line 34
    .line 35
    invoke-virtual {v1}, Lokio/Buffer;->Kk()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iget-wide v3, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwww:J

    .line 40
    .line 41
    sub-long/2addr v1, v3

    .line 42
    invoke-virtual {v0, v1, v2}, Lokio/Buffer$UnsafeCursor;->Kkkkkkkkkkkkkkkkkkkkkkk(J)I

    .line 43
    .line 44
    .line 45
    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    .line 46
    .line 47
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 48
    .line 49
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwww:[B

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/ws/WebSocketProtocol;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer$UnsafeCursor;[B)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 55
    .line 56
    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwww:Z

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->Kkkkkkkkkkkkkkkkkkkkk()V

    .line 65
    .line 66
    .line 67
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwww:I

    .line 68
    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 73
    .line 74
    iget v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwww:I

    .line 75
    .line 76
    invoke-static {v1}, Lokhttp3/internal/Util;->Kkkkkkkkkkkkkkk(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "Expected continuation opcode. Got: "

    .line 81
    .line 82
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 91
    .line 92
    const-string v1, "closed"

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0
.end method

.method public final Wwwwwwwwwwwwww()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_14

    .line 4
    .line 5
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 6
    .line 7
    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 16
    .line 17
    invoke-interface {v2}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Timeout;

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 25
    .line 26
    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/16 v3, 0xff

    .line 31
    .line 32
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BI)I

    .line 33
    .line 34
    .line 35
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 37
    .line 38
    invoke-interface {v4}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    .line 44
    invoke-virtual {v4, v0, v1, v5}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 45
    .line 46
    .line 47
    and-int/lit8 v0, v2, 0xf

    .line 48
    .line 49
    iput v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwww:I

    .line 50
    .line 51
    and-int/lit16 v1, v2, 0x80

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    move v1, v5

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v1, v4

    .line 60
    :goto_0
    iput-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwww:Z

    .line 61
    .line 62
    and-int/lit8 v6, v2, 0x8

    .line 63
    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    move v6, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v6, v4

    .line 69
    :goto_1
    iput-boolean v6, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwww:Z

    .line 70
    .line 71
    if-eqz v6, :cond_3

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 77
    .line 78
    const-string v1, "Control frames must be final."

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_3
    :goto_2
    and-int/lit8 v1, v2, 0x40

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    move v1, v5

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move v1, v4

    .line 91
    :goto_3
    const-string v6, "Unexpected rsv1 flag"

    .line 92
    .line 93
    if-eq v0, v5, :cond_6

    .line 94
    .line 95
    const/4 v7, 0x2

    .line 96
    if-eq v0, v7, :cond_6

    .line 97
    .line 98
    if-nez v1, :cond_5

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 102
    .line 103
    invoke-direct {v0, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_6
    if-eqz v1, :cond_8

    .line 108
    .line 109
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    move v0, v5

    .line 114
    goto :goto_4

    .line 115
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    .line 116
    .line 117
    invoke-direct {v0, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_8
    move v0, v4

    .line 122
    :goto_4
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwww:Z

    .line 123
    .line 124
    :goto_5
    and-int/lit8 v0, v2, 0x20

    .line 125
    .line 126
    if-nez v0, :cond_13

    .line 127
    .line 128
    and-int/lit8 v0, v2, 0x10

    .line 129
    .line 130
    if-nez v0, :cond_12

    .line 131
    .line 132
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 133
    .line 134
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {v0, v3}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BI)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    and-int/lit16 v1, v0, 0x80

    .line 143
    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    move v4, v5

    .line 147
    :cond_9
    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 148
    .line 149
    if-ne v4, v1, :cond_b

    .line 150
    .line 151
    new-instance v0, Ljava/net/ProtocolException;

    .line 152
    .line 153
    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 154
    .line 155
    if-eqz v1, :cond_a

    .line 156
    .line 157
    const-string v1, "Server-sent frames must not be masked."

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_a
    const-string v1, "Client-sent frames must be masked."

    .line 161
    .line 162
    :goto_6
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_b
    and-int/lit8 v0, v0, 0x7f

    .line 167
    .line 168
    int-to-long v0, v0

    .line 169
    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwww:J

    .line 170
    .line 171
    const-wide/16 v2, 0x7e

    .line 172
    .line 173
    cmp-long v2, v0, v2

    .line 174
    .line 175
    if-nez v2, :cond_c

    .line 176
    .line 177
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 178
    .line 179
    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    const v1, 0xffff

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v1}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SI)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    int-to-long v0, v0

    .line 191
    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwww:J

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_c
    const-wide/16 v2, 0x7f

    .line 195
    .line 196
    cmp-long v0, v0, v2

    .line 197
    .line 198
    if-nez v0, :cond_e

    .line 199
    .line 200
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 201
    .line 202
    invoke-interface {v0}, Lokio/BufferedSource;->readLong()J

    .line 203
    .line 204
    .line 205
    move-result-wide v0

    .line 206
    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwww:J

    .line 207
    .line 208
    const-wide/16 v2, 0x0

    .line 209
    .line 210
    cmp-long v0, v0, v2

    .line 211
    .line 212
    if-ltz v0, :cond_d

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_d
    new-instance v0, Ljava/net/ProtocolException;

    .line 216
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v2, "Frame length 0x"

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwww:J

    .line 228
    .line 229
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->Kkkkkkkkkkkkkk(J)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v2, " > 0x7FFFFFFFFFFFFFFF"

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_e
    :goto_7
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwww:Z

    .line 250
    .line 251
    if-eqz v0, :cond_10

    .line 252
    .line 253
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwww:J

    .line 254
    .line 255
    const-wide/16 v2, 0x7d

    .line 256
    .line 257
    cmp-long v0, v0, v2

    .line 258
    .line 259
    if-gtz v0, :cond_f

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_f
    new-instance v0, Ljava/net/ProtocolException;

    .line 263
    .line 264
    const-string v1, "Control frame must be less than 125B."

    .line 265
    .line 266
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0

    .line 270
    :cond_10
    :goto_8
    if-eqz v4, :cond_11

    .line 271
    .line 272
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 273
    .line 274
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwww:[B

    .line 275
    .line 276
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V

    .line 277
    .line 278
    .line 279
    :cond_11
    return-void

    .line 280
    :cond_12
    new-instance v0, Ljava/net/ProtocolException;

    .line 281
    .line 282
    const-string v1, "Unexpected rsv3 flag"

    .line 283
    .line 284
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw v0

    .line 288
    :cond_13
    new-instance v0, Ljava/net/ProtocolException;

    .line 289
    .line 290
    const-string v1, "Unexpected rsv2 flag"

    .line 291
    .line 292
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v0

    .line 296
    :catchall_0
    move-exception v2

    .line 297
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 298
    .line 299
    invoke-interface {v3}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 304
    .line 305
    invoke-virtual {v3, v0, v1, v4}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 306
    .line 307
    .line 308
    throw v2

    .line 309
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 310
    .line 311
    const-string v1, "closed"

    .line 312
    .line 313
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 10
    .line 11
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwww:Lokio/Buffer;

    .line 12
    .line 13
    invoke-interface {v4, v5, v0, v1}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwww:Lokio/Buffer;

    .line 21
    .line 22
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lokio/Buffer;->Kkkkkkkk(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3}, Lokio/Buffer$UnsafeCursor;->Kkkkkkkkkkkkkkkkkkkkkkk(J)I

    .line 30
    .line 31
    .line 32
    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    .line 33
    .line 34
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 35
    .line 36
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwww:[B

    .line 37
    .line 38
    invoke-virtual {v0, v1, v4}, Lokhttp3/internal/ws/WebSocketProtocol;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer$UnsafeCursor;[B)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 42
    .line 43
    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwww:I

    .line 47
    .line 48
    packed-switch v0, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    new-instance v0, Ljava/net/ProtocolException;

    .line 52
    .line 53
    iget v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwww:I

    .line 54
    .line 55
    invoke-static {v1}, Lokhttp3/internal/Util;->Kkkkkkkkkkkkkkk(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "Unknown control opcode: "

    .line 60
    .line 61
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :pswitch_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 70
    .line 71
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwww:Lokio/Buffer;

    .line 72
    .line 73
    invoke-virtual {v1}, Lokio/Buffer;->Wwwwwww()Lokio/ByteString;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_1
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 82
    .line 83
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwww:Lokio/Buffer;

    .line 84
    .line 85
    invoke-virtual {v1}, Lokio/Buffer;->Wwwwwww()Lokio/ByteString;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_2
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwww:Lokio/Buffer;

    .line 94
    .line 95
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    const-wide/16 v4, 0x1

    .line 100
    .line 101
    cmp-long v4, v0, v4

    .line 102
    .line 103
    if-eqz v4, :cond_3

    .line 104
    .line 105
    cmp-long v0, v0, v2

    .line 106
    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwww:Lokio/Buffer;

    .line 110
    .line 111
    invoke-virtual {v0}, Lokio/Buffer;->readShort()S

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwww:Lokio/Buffer;

    .line 116
    .line 117
    invoke-virtual {v1}, Lokio/Buffer;->Kkkkk()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    sget-object v2, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    .line 122
    .line 123
    invoke-virtual {v2, v0}, Lokhttp3/internal/ws/WebSocketProtocol;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-nez v2, :cond_1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    .line 131
    .line 132
    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_2
    const/16 v0, 0x3ed

    .line 137
    .line 138
    const-string v1, ""

    .line 139
    .line 140
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 141
    .line 142
    invoke-interface {v2, v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 147
    .line 148
    return-void

    .line 149
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    .line 150
    .line 151
    const-string v1, "Malformed close payload length of 1."

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->Kkkkkkkkkkkkkkkkkkkkkk()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->Wwwwwwwwwwww:Lokhttp3/internal/ws/MessageInflater;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/ws/MessageInflater;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
