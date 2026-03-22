.class public final Lokio/CipherSink;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokio/Sink;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lokio/CipherSink;",
        "Lokio/Sink;",
        "Lokio/Buffer;",
        "source",
        "",
        "byteCount",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Buffer;J)V",
        "flush",
        "()V",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "close",
        "remaining",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Buffer;J)I",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Ljava/lang/Throwable;",
        "Lokio/BufferedSink;",
        "Lokio/BufferedSink;",
        "sink",
        "Ljavax/crypto/Cipher;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Ljavax/crypto/Cipher;",
        "getCipher",
        "()Ljavax/crypto/Cipher;",
        "cipher",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "blockSize",
        "",
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
        "SMAP\nCipherSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,148:1\n1#2:149\n86#3:150\n*S KotlinDebug\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n*L\n47#1:150\n*E\n"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V
    .locals 6
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
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    move-wide v4, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJ)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    move-wide p2, v4

    .line 16
    :goto_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long v0, p2, v0

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v0, v0

    .line 27
    sub-long/2addr p2, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string p2, "closed"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)I
    .locals 10

    .line 1
    iget-object v0, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 2
    .line 3
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    int-to-long v1, v1

    .line 9
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    long-to-int v1, v1

    .line 14
    iget-object v2, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 15
    .line 16
    invoke-interface {v2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    move v7, v1

    .line 27
    :goto_0
    const/16 v1, 0x2000

    .line 28
    .line 29
    if-le v3, v1, :cond_1

    .line 30
    .line 31
    iget v1, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    if-gt v7, v1, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 36
    .line 37
    iget-object v1, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 38
    .line 39
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwww(J)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {v0, p1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 48
    .line 49
    .line 50
    long-to-int p1, p2

    .line 51
    return p1

    .line 52
    :cond_0
    sub-int/2addr v7, v1

    .line 53
    iget-object v1, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 54
    .line 55
    invoke-virtual {v1, v7}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v2, v3}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget-object v4, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 65
    .line 66
    iget-object v5, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 67
    .line 68
    iget v6, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    iget-object v8, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 71
    .line 72
    iget v9, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 73
    .line 74
    invoke-virtual/range {v4 .. v9}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    iget v1, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 79
    .line 80
    add-int/2addr v1, p3

    .line 81
    iput v1, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 82
    .line 83
    invoke-virtual {v2}, Lokio/Buffer;->Kk()J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    int-to-long v5, p3

    .line 88
    add-long/2addr v3, v5

    .line 89
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->Kkk(J)V

    .line 90
    .line 91
    .line 92
    iget p3, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 93
    .line 94
    iget v1, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 95
    .line 96
    if-ne p3, v1, :cond_2

    .line 97
    .line 98
    invoke-virtual {p2}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    iput-object p3, v2, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 103
    .line 104
    invoke-static {p2}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object p2, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 108
    .line 109
    invoke-interface {p2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/BufferedSink;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 113
    .line 114
    .line 115
    move-result-wide p2

    .line 116
    int-to-long v1, v7

    .line 117
    sub-long/2addr p2, v1

    .line 118
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->Kkk(J)V

    .line 119
    .line 120
    .line 121
    iget p2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 122
    .line 123
    add-int/2addr p2, v7

    .line 124
    iput p2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 125
    .line 126
    iget p3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 127
    .line 128
    if-ne p2, p3, :cond_3

    .line 129
    .line 130
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    iput-object p2, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 135
    .line 136
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    return v7
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Throwable;
    .locals 8

    .line 1
    iget-object v0, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    const/16 v2, 0x2000

    .line 13
    .line 14
    if-le v0, v2, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 17
    .line 18
    iget-object v2, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v0, v2}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    return-object v0

    .line 30
    :cond_1
    iget-object v2, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 31
    .line 32
    invoke-interface {v2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v0}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :try_start_1
    iget-object v3, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 41
    .line 42
    iget-object v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 43
    .line 44
    iget v5, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 45
    .line 46
    invoke-virtual {v3, v4, v5}, Ljavax/crypto/Cipher;->doFinal([BI)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 51
    .line 52
    add-int/2addr v4, v3

    .line 53
    iput v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 54
    .line 55
    invoke-virtual {v2}, Lokio/Buffer;->Kk()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    int-to-long v6, v3

    .line 60
    add-long/2addr v4, v6

    .line 61
    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->Kkk(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception v1

    .line 66
    :goto_0
    iget v3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 67
    .line 68
    iget v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    if-ne v3, v4, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iput-object v3, v2, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 77
    .line 78
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-object v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 14
    .line 15
    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    move-object v0, v1

    .line 23
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 24
    .line 25
    :goto_1
    return-void

    .line 26
    :cond_2
    throw v0
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/CipherSink;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
