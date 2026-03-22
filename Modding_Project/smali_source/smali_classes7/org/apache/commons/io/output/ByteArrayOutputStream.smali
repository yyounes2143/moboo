.class public Lorg/apache/commons/io/output/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "Proguard"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final Wwwwwwwwwwwwwwwwwww:[B


# instance fields
.field public Wwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwww:[B

.field public Wwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwww:[B

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwww:Z

    if-ltz p1, :cond_0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized Wwwwwwwwwwwwww(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, [B

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    sub-int/2addr v0, v3

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method public declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwww()[B
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwww:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    new-array v1, v0, [B

    .line 13
    .line 14
    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, [B

    .line 33
    .line 34
    array-length v6, v5

    .line 35
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-static {v5, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    add-int/2addr v4, v6

    .line 43
    sub-int/2addr v0, v6

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    :cond_2
    monitor-exit p0

    .line 47
    return-object v1

    .line 48
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:[B

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    add-int/2addr p1, v0

    .line 19
    iput p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    iget p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, [B

    .line 34
    .line 35
    iput-object p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:[B

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:[B

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    array-length v0, v0

    .line 47
    shl-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 50
    .line 51
    sub-int/2addr p1, v1

    .line 52
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 57
    .line 58
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:[B

    .line 59
    .line 60
    array-length v1, v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 63
    .line 64
    :goto_0
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    new-array p1, p1, [B

    .line 71
    .line 72
    iput-object p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:[B

    .line 73
    .line 74
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    return-void
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

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    .line 11
    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:I

    sub-int v1, v0, v1

    .line 12
    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:[B

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 15
    iget p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwww:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public write([BII)V
    .locals 5

    if-ltz p2, :cond_3

    .line 1
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int/2addr p2, p3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p2, :cond_3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    add-int v1, v0, p3

    .line 4
    iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:I

    sub-int/2addr v0, v2

    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 5
    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, p2, p3

    .line 6
    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:[B

    invoke-static {p1, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v2

    if-lez p3, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_2
    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 9
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
