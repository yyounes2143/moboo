.class public Lorg/apache/commons/io/input/ReaderInputStream;
.super Ljava/io/InputStream;
.source "Proguard"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/CoderResult;

.field public final Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/CharsetEncoder;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/CoderResult;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;

    .line 27
    .line 28
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, -0x1

    .line 45
    if-ne v1, v2, :cond_1

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 52
    .line 53
    add-int/2addr v0, v1

    .line 54
    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/CharsetEncoder;

    .line 68
    .line 69
    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 70
    .line 71
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    iget-boolean v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/CoderResult;

    .line 80
    .line 81
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 84
    .line 85
    .line 86
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
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 4
    .line 5
    .line 6
    return-void
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
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 14
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwww:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

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

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/ReaderInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-ltz p3, :cond_4

    if-ltz p2, :cond_4

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 2
    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 6
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwww:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    if-nez v0, :cond_3

    .line 7
    iget-boolean p1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->Wwwwwwwwwwwwwwwwwwww:Z

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    return v0

    .line 8
    :cond_4
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

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Byte array must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
