.class public Lorg/apache/commons/io/input/BOMInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "Proguard"


# static fields
.field public static final Wwwwwwwwwwwwwwwww:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/io/ByteOrderMark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwww:[I

.field public Wwwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/ByteOrderMark;

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/ByteOrderMark;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/BOMInputStream$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/BOMInputStream$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwww:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkkkkkkkk()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->Kkkkkkkkkkkkkkkkkkkkkk()Lorg/apache/commons/io/ByteOrderMark;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwww:I

    .line 5
    .line 6
    iget v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwww:[I

    .line 11
    .line 12
    add-int/lit8 v2, v0, 0x1

    .line 13
    .line 14
    iput v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwww:I

    .line 15
    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, -0x1

    .line 20
    return v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkk(Lorg/apache/commons/io/ByteOrderMark;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lorg/apache/commons/io/ByteOrderMark;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwww:[I

    .line 14
    .line 15
    aget v3, v3, v1

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public Kkkkkkkkkkkkkkkkkkkkkk()Lorg/apache/commons/io/ByteOrderMark;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwww:[I

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lorg/apache/commons/io/ByteOrderMark;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    new-array v1, v1, [I

    .line 21
    .line 22
    iput-object v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwww:[I

    .line 23
    .line 24
    move v1, v0

    .line 25
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwww:[I

    .line 26
    .line 27
    array-length v3, v2

    .line 28
    if-ge v1, v3, :cond_1

    .line 29
    .line 30
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    aput v3, v2, v1

    .line 37
    .line 38
    iget v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    iput v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 43
    .line 44
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwww:[I

    .line 45
    .line 46
    aget v2, v2, v1

    .line 47
    .line 48
    if-gez v2, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->Kkkkkkkkkkkkkkkkkkkkkkk()Lorg/apache/commons/io/ByteOrderMark;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/ByteOrderMark;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    iget-boolean v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v1}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwww:[I

    .line 71
    .line 72
    array-length v2, v2

    .line 73
    if-ge v1, v2, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/ByteOrderMark;

    .line 76
    .line 77
    invoke-virtual {v0}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwww:I

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    iput v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 85
    .line 86
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/ByteOrderMark;

    .line 87
    .line 88
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkk()Lorg/apache/commons/io/ByteOrderMark;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/apache/commons/io/ByteOrderMark;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/BOMInputStream;->Kkkkkkkkkkkkkkkkkkkkk(Lorg/apache/commons/io/ByteOrderMark;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwww:I

    .line 3
    .line 4
    iput v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwww:I

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwww:[I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwww:Z

    .line 14
    .line 15
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->Kkkkkkkkkkkkkkkkkkkk()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/BOMInputStream;->read([BII)I

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

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->Kkkkkkkkkkkkkkkkkkkk()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v2, p2, 0x1

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    .line 4
    aput-byte v3, p1, p2

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_3

    if-lez v1, :cond_2

    return v1

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    add-int/2addr v1, p1

    return v1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwww:I

    .line 3
    .line 4
    iput v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwww:I

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwww:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->Wwwwwwwwwwwwwwwwwwwwww:[I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    int-to-long v1, v0

    .line 3
    cmp-long v3, p1, v1

    .line 4
    .line 5
    if-lez v3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->Kkkkkkkkkkkkkkkkkkkk()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ltz v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 17
    .line 18
    sub-long/2addr p1, v1

    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    add-long/2addr p1, v1

    .line 24
    return-wide p1
.end method
