.class public abstract Lorg/apache/commons/io/output/ThresholdingOutputStream;
.super Ljava/io/OutputStream;
.source "Proguard"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:I


# virtual methods
.method public abstract Wwwwwwwwwwwwww()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    add-long/2addr v0, v2

    .line 9
    iget p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    int-to-long v2, p1

    .line 12
    cmp-long p1, v0, v2

    .line 13
    .line 14
    if-lez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwww()V

    .line 20
    .line 21
    .line 22
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
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/OutputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 6
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    iget-wide p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    return-void
.end method
