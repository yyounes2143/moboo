.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokio/Source;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0008J\u001f\u0010\r\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\r\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lokio/InflaterSource;",
        "Lokio/Source;",
        "Lokio/BufferedSource;",
        "source",
        "Ljava/util/zip/Inflater;",
        "inflater",
        "<init>",
        "(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V",
        "(Lokio/Source;Ljava/util/zip/Inflater;)V",
        "Lokio/Buffer;",
        "sink",
        "",
        "byteCount",
        "read",
        "(Lokio/Buffer;J)J",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Z",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "",
        "close",
        "()V",
        "Wwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/BufferedSource;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/zip/Inflater;",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "bufferBytesHeldByInflater",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "closed",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInflaterSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,147:1\n1#2:148\n86#3:149\n*S KotlinDebug\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n*L\n73#1:149\n*E\n"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V
    .locals 0
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/Inflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    iput-object p2, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    return-void
.end method

.method public constructor <init>(Lokio/Source;Ljava/util/zip/Inflater;)V
    .locals 0
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/Inflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwww()V
    .locals 4

    .line 1
    iget v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    iget v1, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    .line 15
    sub-int/2addr v1, v0

    .line 16
    iput v1, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    iget-object v1, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 19
    .line 20
    int-to-long v2, v0

    .line 21
    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 12
    .line 13
    invoke-interface {v0}, Lokio/BufferedSource;->Wwwwwwwwwwww()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_1
    iget-object v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 22
    .line 23
    invoke-interface {v0}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 28
    .line 29
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 30
    .line 31
    iget v3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    sub-int/2addr v2, v3

    .line 34
    iput v2, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 35
    .line 36
    iget-object v4, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 37
    .line 38
    iget-object v0, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 39
    .line 40
    invoke-virtual {v4, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 41
    .line 42
    .line 43
    return v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)J
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
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-ltz v2, :cond_4

    .line 6
    .line 7
    iget-boolean v3, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    if-nez v3, :cond_3

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    :try_start_0
    invoke-virtual {p1, v2}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    rsub-int v3, v3, 0x2000

    .line 22
    .line 23
    int-to-long v3, v3

    .line 24
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    long-to-int p2, p2

    .line 29
    invoke-virtual {p0}, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 30
    .line 31
    .line 32
    iget-object p3, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 33
    .line 34
    iget-object v3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 35
    .line 36
    iget v4, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 37
    .line 38
    invoke-virtual {p3, v3, v4, p2}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p0}, Lokio/InflaterSource;->Wwwwwwwwwwwwww()V

    .line 43
    .line 44
    .line 45
    if-lez p2, :cond_1

    .line 46
    .line 47
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 48
    .line 49
    add-int/2addr p3, p2

    .line 50
    iput p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 51
    .line 52
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    int-to-long p2, p2

    .line 57
    add-long/2addr v0, p2

    .line 58
    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 59
    .line 60
    .line 61
    return-wide p2

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget p2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 65
    .line 66
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 67
    .line 68
    if-ne p2, p3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 75
    .line 76
    invoke-static {v2}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :cond_2
    return-wide v0

    .line 80
    :goto_0
    new-instance p2, Ljava/io/IOException;

    .line 81
    .line 82
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p2

    .line 86
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string p2, "closed"

    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v0, "byteCount < 0: "

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    iget-object v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 15
    .line 16
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 4
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
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 30
    .line 31
    invoke-interface {v0}, Lokio/BufferedSource;->Wwwwwwwwwwww()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 39
    .line 40
    const-string p2, "source exhausted prematurely"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_3
    :goto_1
    const-wide/16 p1, -0x1

    .line 47
    .line 48
    return-wide p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/InflaterSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
