.class public Lorg/apache/commons/io/input/UnixLineEndingInputStream;
.super Ljava/io/InputStream;
.source "Proguard"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/InputStream;

.field public Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Z


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    move v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    const/16 v1, 0xa

    .line 21
    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    move v1, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    move v1, v2

    .line 27
    :goto_1
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 28
    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    move v2, v3

    .line 34
    :cond_3
    iput-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 35
    .line 36
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 15
    .line 16
    const/16 p1, 0xa

    .line 17
    .line 18
    return p1

    .line 19
    :cond_1
    :goto_0
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/InputStream;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string v0, "Mark notsupported"

    .line 5
    .line 6
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0

    .line 25
    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    const/16 v0, 0xa

    .line 30
    .line 31
    return v0

    .line 32
    :cond_2
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->read()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0

    .line 43
    :cond_3
    return v1
.end method
