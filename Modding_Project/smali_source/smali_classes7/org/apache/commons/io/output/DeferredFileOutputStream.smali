.class public Lorg/apache/commons/io/output/DeferredFileOutputStream;
.super Lorg/apache/commons/io/output/ThresholdingOutputStream;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwww:Ljava/io/File;

.field public final Wwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

.field public Wwwwwwwwwwwwwwwwwwwww:Ljava/io/OutputStream;

.field public Wwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/output/ByteArrayOutputStream;


# virtual methods
.method public Wwwwwwwwwwwwww()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 16
    .line 17
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/io/FileOutputStream;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwww(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwwwwwwww:Ljava/io/OutputStream;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 40
    .line 41
    .line 42
    throw v1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwwwwwwww:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->close()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->Wwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    return-void
.end method
