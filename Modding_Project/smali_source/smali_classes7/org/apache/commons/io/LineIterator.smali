.class public Lorg/apache/commons/io/LineIterator;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Closeable;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/BufferedReader;


# virtual methods
.method public Wwwwwwwwwwwwww()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 14
    .line 15
    const-string v1, "No more lines"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwww()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
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
    iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/BufferedReader;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/BufferedReader;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iput-boolean v1, p0, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 22
    .line 23
    return v2

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return v1

    .line 35
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_1
    move-exception v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Remove unsupported on LineIterator"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
