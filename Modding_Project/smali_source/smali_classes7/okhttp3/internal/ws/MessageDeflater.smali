.class public final Lokhttp3/internal/ws/MessageDeflater;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u000f\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lokhttp3/internal/ws/MessageDeflater;",
        "Ljava/io/Closeable;",
        "",
        "noContextTakeover",
        "<init>",
        "(Z)V",
        "Lokio/Buffer;",
        "buffer",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Buffer;)V",
        "close",
        "()V",
        "Lokio/ByteString;",
        "suffix",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Buffer;Lokio/ByteString;)Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/Buffer;",
        "deflatedBytes",
        "Ljava/util/zip/Deflater;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/zip/Deflater;",
        "deflater",
        "Lokio/DeflaterSink;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Lokio/DeflaterSink;",
        "deflaterSink",
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
.field public final Wwwwwwwwwwwwwwwwwwwwww:Lokio/DeflaterSink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Deflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    new-instance p1, Lokio/Buffer;

    .line 7
    .line 8
    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 12
    .line 13
    new-instance v0, Ljava/util/zip/Deflater;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Deflater;

    .line 21
    .line 22
    new-instance v1, Lokio/DeflaterSink;

    .line 23
    .line 24
    invoke-direct {v1, p1, v0}, Lokio/DeflaterSink;-><init>(Lokio/Sink;Ljava/util/zip/Deflater;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/DeflaterSink;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;Lokio/ByteString;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    int-to-long v2, v2

    .line 10
    sub-long/2addr v0, v2

    .line 11
    invoke-virtual {p1, v0, v1, p2}, Lokio/Buffer;->Kkkkkkkkkk(JLokio/ByteString;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;)V
    .locals 5
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-boolean v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Deflater;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/DeflaterSink;

    .line 23
    .line 24
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {v0, p1, v1, v2}, Lokio/DeflaterSink;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/DeflaterSink;

    .line 32
    .line 33
    invoke-virtual {v0}, Lokio/DeflaterSink;->flush()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 37
    .line 38
    invoke-static {}, Lokhttp3/internal/ws/MessageDeflaterKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/ByteString;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;Lokio/ByteString;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 49
    .line 50
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    const/4 v2, 0x4

    .line 55
    int-to-long v2, v2

    .line 56
    sub-long/2addr v0, v2

    .line 57
    iget-object v2, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {v2, v4, v3, v4}, Lokio/Buffer;->Kkkkkkk(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :try_start_0
    invoke-virtual {v2, v0, v1}, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwww(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 86
    .line 87
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    invoke-virtual {p1, v0, v1, v2}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string v0, "Failed requirement."

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/DeflaterSink;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/DeflaterSink;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
