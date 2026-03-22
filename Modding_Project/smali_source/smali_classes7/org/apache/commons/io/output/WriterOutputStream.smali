.class public Lorg/apache/commons/io/output/WriterOutputStream;
.super Ljava/io/OutputStream;
.source "Proguard"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

.field public final Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/CharsetDecoder;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/CharsetDecoder;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 39
    .line 40
    const-string v0, "Unexpected coder result"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/CharBuffer;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 30
    .line 31
    .line 32
    :cond_0
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
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/io/output/WriterOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/output/WriterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    :cond_1
    return-void
.end method
