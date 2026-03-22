.class public Lorg/apache/commons/io/input/BoundedReader;
.super Ljava/io/Reader;
.source "Proguard"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public mark(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    sub-int v1, p1, v0

    .line 4
    .line 5
    iput v1, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwww:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwww:I

    if-ltz v1, :cond_1

    sub-int v1, v0, v1

    iget v3, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwww:I

    if-lt v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    add-int v2, p2, v0

    int-to-char v1, v1

    .line 6
    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
