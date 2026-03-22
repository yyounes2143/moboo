.class public final Lokhttp3/internal/ws/MessageInflater;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokhttp3/internal/ws/MessageInflater;",
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
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/Buffer;",
        "deflatedBytes",
        "Ljava/util/zip/Inflater;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/zip/Inflater;",
        "inflater",
        "Lokio/InflaterSource;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Lokio/InflaterSource;",
        "inflaterSource",
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
.field public final Wwwwwwwwwwwwwwwwwwwwww:Lokio/InflaterSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;
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
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    new-instance p1, Lokio/Buffer;

    .line 7
    .line 8
    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 12
    .line 13
    new-instance v0, Ljava/util/zip/Inflater;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 20
    .line 21
    new-instance v1, Lokio/InflaterSource;

    .line 22
    .line 23
    invoke-direct {v1, p1, v0}, Lokio/InflaterSource;-><init>(Lokio/Source;Ljava/util/zip/Inflater;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/InflaterSource;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

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
    iget-boolean v0, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)J

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 28
    .line 29
    const v1, 0xffff

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lokio/Buffer;->Illlllllllllllllllll(I)Lokio/Buffer;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-object v2, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 42
    .line 43
    invoke-virtual {v2}, Lokio/Buffer;->Kk()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    add-long/2addr v0, v2

    .line 48
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/InflaterSource;

    .line 49
    .line 50
    const-wide v3, 0x7fffffffffffffffL

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1, v3, v4}, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)J

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesRead()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    cmp-long v2, v2, v0

    .line 65
    .line 66
    if-ltz v2, :cond_1

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string v0, "Failed requirement."

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
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
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/InflaterSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/InflaterSource;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
