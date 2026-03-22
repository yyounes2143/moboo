.class public final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u001f\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001d\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0014\u0010\u0008\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010!R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010!R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00103\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00100R\u0016\u00105\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010!R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0016\u0010=\u001a\u0004\u0018\u00010:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010@\u001a\u0004\u0018\u00010>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010?\u00a8\u0006A"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketWriter;",
        "Ljava/io/Closeable;",
        "",
        "isClient",
        "Lokio/BufferedSink;",
        "sink",
        "Ljava/util/Random;",
        "random",
        "perMessageDeflate",
        "noContextTakeover",
        "",
        "minimumDeflateSize",
        "<init>",
        "(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V",
        "Lokio/ByteString;",
        "payload",
        "",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "(Lokio/ByteString;)V",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "",
        "code",
        "reason",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(ILokio/ByteString;)V",
        "formatOpcode",
        "data",
        "Wwwwwwwwwwwwww",
        "close",
        "()V",
        "opcode",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/BufferedSink;",
        "getSink",
        "()Lokio/BufferedSink;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/Random;",
        "getRandom",
        "()Ljava/util/Random;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwww",
        "J",
        "Lokio/Buffer;",
        "Wwwwwwwwwwwwwwwwwww",
        "Lokio/Buffer;",
        "messageBuffer",
        "Wwwwwwwwwwwwwwwwww",
        "sinkBuffer",
        "Wwwwwwwwwwwwwwwww",
        "writerClosed",
        "Lokhttp3/internal/ws/MessageDeflater;",
        "Wwwwwwwwwwwwwwww",
        "Lokhttp3/internal/ws/MessageDeflater;",
        "messageDeflater",
        "",
        "Wwwwwwwwwwwwwww",
        "[B",
        "maskKey",
        "Lokio/Buffer$UnsafeCursor;",
        "Lokio/Buffer$UnsafeCursor;",
        "maskCursor",
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
.field public final Wwwwwwwwwwwwww:Lokio/Buffer$UnsafeCursor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwww:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwww:Lokhttp3/internal/ws/MessageDeflater;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwww:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwww:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Random;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method public constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V
    .locals 0
    .param p2    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 7
    .line 8
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Random;

    .line 9
    .line 10
    iput-boolean p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    iput-wide p6, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwww:J

    .line 15
    .line 16
    new-instance p3, Lokio/Buffer;

    .line 17
    .line 18
    invoke-direct {p3}, Lokio/Buffer;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 22
    .line 23
    invoke-interface {p2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 p3, 0x4

    .line 33
    new-array p3, p3, [B

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object p3, p2

    .line 37
    :goto_0
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwww:[B

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    new-instance p2, Lokio/Buffer$UnsafeCursor;

    .line 42
    .line 43
    invoke-direct {p2}, Lokio/Buffer$UnsafeCursor;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkkkkkkkkkk(Lokio/ByteString;)V
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(ILokio/ByteString;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkk(Lokio/ByteString;)V
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(ILokio/ByteString;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Wwwwwwwwwwwwww(ILokio/ByteString;)V
    .locals 5
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lokio/Buffer;->Illlllllllllllllllllllllll(Lokio/ByteString;)Lokio/Buffer;

    .line 8
    .line 9
    .line 10
    or-int/lit16 v0, p1, 0x80

    .line 11
    .line 12
    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    int-to-long v1, p2

    .line 21
    iget-wide v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwww:J

    .line 22
    .line 23
    cmp-long p2, v1, v3

    .line 24
    .line 25
    if-ltz p2, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwww:Lokhttp3/internal/ws/MessageDeflater;

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    new-instance p2, Lokhttp3/internal/ws/MessageDeflater;

    .line 32
    .line 33
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 34
    .line 35
    invoke-direct {p2, v0}, Lokhttp3/internal/ws/MessageDeflater;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwww:Lokhttp3/internal/ws/MessageDeflater;

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;)V

    .line 43
    .line 44
    .line 45
    or-int/lit16 v0, p1, 0xc0

    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 48
    .line 49
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 56
    .line 57
    .line 58
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const/16 v0, 0x80

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    :goto_0
    const-wide/16 v1, 0x7d

    .line 67
    .line 68
    cmp-long v1, p1, v1

    .line 69
    .line 70
    if-gtz v1, :cond_3

    .line 71
    .line 72
    long-to-int v1, p1

    .line 73
    or-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const-wide/32 v1, 0xffff

    .line 81
    .line 82
    .line 83
    cmp-long v1, p1, v1

    .line 84
    .line 85
    if-gtz v1, :cond_4

    .line 86
    .line 87
    or-int/lit8 v0, v0, 0x7e

    .line 88
    .line 89
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 95
    .line 96
    long-to-int v1, p1

    .line 97
    invoke-virtual {v0, v1}, Lokio/Buffer;->Illllllllllllllll(I)Lokio/Buffer;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    or-int/lit8 v0, v0, 0x7f

    .line 102
    .line 103
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 109
    .line 110
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->Illlllllllllllllll(J)Lokio/Buffer;

    .line 111
    .line 112
    .line 113
    :goto_1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Random;

    .line 118
    .line 119
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwww:[B

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 125
    .line 126
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwww:[B

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lokio/Buffer;->Illllllllllllllllllllllll([B)Lokio/Buffer;

    .line 129
    .line 130
    .line 131
    const-wide/16 v0, 0x0

    .line 132
    .line 133
    cmp-long v2, p1, v0

    .line 134
    .line 135
    if-lez v2, :cond_5

    .line 136
    .line 137
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 138
    .line 139
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Lokio/Buffer;->Kkkkkkkk(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 142
    .line 143
    .line 144
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 145
    .line 146
    invoke-virtual {v2, v0, v1}, Lokio/Buffer$UnsafeCursor;->Kkkkkkkkkkkkkkkkkkkkkkk(J)I

    .line 147
    .line 148
    .line 149
    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    .line 150
    .line 151
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 152
    .line 153
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwww:[B

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/ws/WebSocketProtocol;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer$UnsafeCursor;[B)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 159
    .line 160
    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 161
    .line 162
    .line 163
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 164
    .line 165
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 166
    .line 167
    invoke-virtual {v0, v1, p1, p2}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 171
    .line 172
    invoke-interface {p1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/BufferedSink;

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 177
    .line 178
    const-string p2, "closed"

    .line 179
    .line 180
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(ILokio/ByteString;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v1, v0

    .line 10
    const-wide/16 v3, 0x7d

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-gtz v1, :cond_2

    .line 15
    .line 16
    or-int/lit16 p1, p1, 0x80

    .line 17
    .line 18
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    or-int/lit16 p1, v0, 0x80

    .line 28
    .line 29
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Random;

    .line 35
    .line 36
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwww:[B

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 42
    .line 43
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwww:[B

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lokio/Buffer;->Illllllllllllllllllllllll([B)Lokio/Buffer;

    .line 46
    .line 47
    .line 48
    if-lez v0, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 51
    .line 52
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lokio/Buffer;->Illlllllllllllllllllllllll(Lokio/ByteString;)Lokio/Buffer;

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 62
    .line 63
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lokio/Buffer;->Kkkkkkkk(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lokio/Buffer$UnsafeCursor;->Kkkkkkkkkkkkkkkkkkkkkkk(J)I

    .line 71
    .line 72
    .line 73
    sget-object p1, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    .line 74
    .line 75
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 76
    .line 77
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwww:[B

    .line 78
    .line 79
    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/ws/WebSocketProtocol;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer$UnsafeCursor;[B)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwww:Lokio/Buffer$UnsafeCursor;

    .line 83
    .line 84
    invoke-virtual {p1}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lokio/Buffer;->Illlllllllllllllllllllllll(Lokio/ByteString;)Lokio/Buffer;

    .line 96
    .line 97
    .line 98
    :cond_1
    :goto_0
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 99
    .line 100
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string p2, "Payload size must be less than or equal to 125"

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 113
    .line 114
    const-string p2, "closed"

    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILokio/ByteString;)V
    .locals 1
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lokhttp3/internal/ws/WebSocketProtocol;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 12
    .line 13
    .line 14
    :cond_1
    new-instance v0, Lokio/Buffer;

    .line 15
    .line 16
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lokio/Buffer;->Illllllllllllllll(I)Lokio/Buffer;

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lokio/Buffer;->Illlllllllllllllllllllllll(Lokio/ByteString;)Lokio/Buffer;

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-virtual {v0}, Lokio/Buffer;->Wwwwwww()Lokio/ByteString;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_3
    const/16 p1, 0x8

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(ILokio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwww:Z

    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwwww:Z

    .line 42
    .line 43
    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->Wwwwwwwwwwwwwwww:Lokhttp3/internal/ws/MessageDeflater;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/ws/MessageDeflater;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
