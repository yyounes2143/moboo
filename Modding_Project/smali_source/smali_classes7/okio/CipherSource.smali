.class public final Lokio/CipherSource;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokio/Source;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\rR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u001a\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010\'\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lokio/CipherSource;",
        "Lokio/Source;",
        "Lokio/Buffer;",
        "sink",
        "",
        "byteCount",
        "read",
        "(Lokio/Buffer;J)J",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "",
        "close",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/BufferedSource;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/BufferedSource;",
        "source",
        "Ljavax/crypto/Cipher;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Ljavax/crypto/Cipher;",
        "getCipher",
        "()Ljavax/crypto/Cipher;",
        "cipher",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "blockSize",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Lokio/Buffer;",
        "buffer",
        "",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Z",
        "final",
        "Wwwwwwwwwwwwwwwwwwww",
        "closed",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCipherSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSource.kt\nokio/CipherSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public final Wwwwwwwwwwwwww()V
    .locals 9

    .line 1
    iget-object v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 8
    .line 9
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    sub-int/2addr v1, v2

    .line 14
    iget-object v2, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    move v6, v1

    .line 21
    :goto_0
    const/16 v1, 0x2000

    .line 22
    .line 23
    if-le v2, v1, :cond_1

    .line 24
    .line 25
    iget v1, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    if-gt v6, v1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 31
    .line 32
    iget-object v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 33
    .line 34
    iget-object v1, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 35
    .line 36
    iget-object v2, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 37
    .line 38
    invoke-interface {v2}, Lokio/BufferedSource;->Wwwwwwwwwwwww()[B

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lokio/Buffer;->Illllllllllllllllllllllll([B)Lokio/Buffer;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    sub-int/2addr v6, v1

    .line 51
    iget-object v1, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 52
    .line 53
    invoke-virtual {v1, v6}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v3, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 65
    .line 66
    iget-object v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 67
    .line 68
    iget v5, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    iget-object v7, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 71
    .line 72
    iget v8, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 73
    .line 74
    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-object v2, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 79
    .line 80
    int-to-long v3, v6

    .line 81
    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 82
    .line 83
    .line 84
    iget v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 85
    .line 86
    add-int/2addr v2, v0

    .line 87
    iput v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 88
    .line 89
    iget-object v2, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 90
    .line 91
    invoke-virtual {v2}, Lokio/Buffer;->Kk()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    int-to-long v5, v0

    .line 96
    add-long/2addr v3, v5

    .line 97
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->Kkk(J)V

    .line 98
    .line 99
    .line 100
    iget v0, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 101
    .line 102
    iget v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 103
    .line 104
    if-ne v0, v2, :cond_2

    .line 105
    .line 106
    iget-object v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 107
    .line 108
    invoke-virtual {v1}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iput-object v2, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 113
    .line 114
    invoke-static {v1}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 18
    .line 19
    invoke-interface {v0}, Lokio/BufferedSource;->Wwwwwwwwwwww()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lokio/CipherSource;->Wwwwwwwwwwwwww()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 7

    .line 1
    iget-object v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Cipher;

    .line 18
    .line 19
    iget-object v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 20
    .line 21
    iget v3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BI)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 28
    .line 29
    add-int/2addr v2, v1

    .line 30
    iput v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 31
    .line 32
    iget-object v2, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 33
    .line 34
    invoke-virtual {v2}, Lokio/Buffer;->Kk()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    int-to-long v5, v1

    .line 39
    add-long/2addr v3, v5

    .line 40
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->Kkk(J)V

    .line 41
    .line 42
    .line 43
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 44
    .line 45
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 46
    .line 47
    if-ne v1, v2, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 50
    .line 51
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, v1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 56
    .line 57
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
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
    iput-boolean v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 3
    .line 4
    iget-object v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 5
    .line 6
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 4
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-ltz v2, :cond_2

    .line 6
    .line 7
    iget-boolean v3, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    if-nez v3, :cond_1

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string p2, "closed"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v0, "byteCount < 0: "

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/CipherSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
