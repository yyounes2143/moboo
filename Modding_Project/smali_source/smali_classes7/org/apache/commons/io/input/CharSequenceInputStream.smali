.class public Lorg/apache/commons/io/input/CharSequenceInputStream;
.super Ljava/io/InputStream;
.source "Proguard"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/CharsetEncoder;


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/CharsetEncoder;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    iget-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    iget-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 14
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5
    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 7
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    if-nez v0, :cond_4

    .line 8
    iget-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", offset="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Byte array is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/CharsetEncoder;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 43
    .line 44
    if-ge v0, v3, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    if-ne v0, v2, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    .line 78
    .line 79
    iput v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 80
    .line 81
    iput v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "Unexpected CharBuffer postion: actual="

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, " expected="

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_2
    :goto_1
    monitor-exit p0

    .line 124
    return-void

    .line 125
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    throw v0
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    move-wide v2, v0

    .line 4
    :goto_0
    cmp-long v4, p1, v0

    .line 5
    .line 6
    if-lez v4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->available()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->read()I

    .line 15
    .line 16
    .line 17
    const-wide/16 v4, 0x1

    .line 18
    .line 19
    sub-long/2addr p1, v4

    .line 20
    add-long/2addr v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-wide v2
.end method
