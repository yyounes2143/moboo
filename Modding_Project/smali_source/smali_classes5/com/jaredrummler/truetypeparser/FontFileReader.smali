.class public Lcom/jaredrummler/truetypeparser/FontFileReader;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/InputStream;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwww(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    add-long/2addr v0, p1

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwww(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    long-to-int p1, p1

    .line 15
    iput p1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Reached EOF, file size="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " offset="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    shl-long/2addr v0, v2

    .line 9
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    int-to-long v3, v3

    .line 14
    add-long/2addr v0, v3

    .line 15
    shl-long/2addr v0, v2

    .line 16
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    int-to-long v3, v3

    .line 21
    add-long/2addr v0, v3

    .line 22
    shl-long/2addr v0, v2

    .line 23
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    int-to-long v2, v2

    .line 28
    add-long/2addr v0, v2

    .line 29
    return-wide v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    add-int/lit16 v0, v0, 0x100

    .line 8
    .line 9
    :cond_0
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    add-int v0, p1, p2

    .line 4
    .line 5
    iget v1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    new-array v0, p1, [B

    .line 10
    .line 11
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v1, p2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    iget p2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 18
    .line 19
    add-int/2addr p2, p1

    .line 20
    iput p2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 21
    .line 22
    new-instance p1, Ljava/lang/String;

    .line 23
    .line 24
    const-string p2, "UTF-16BE"

    .line 25
    .line 26
    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v0, "Reached EOF, file size="

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    add-int v1, p1, v0

    .line 4
    .line 5
    iget v2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    if-gt v1, v2, :cond_1

    .line 8
    .line 9
    new-array v1, p1, [B

    .line 10
    .line 11
    iget-object v2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 18
    .line 19
    add-int/2addr v0, p1

    .line 20
    iput v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 21
    .line 22
    if-lez p1, :cond_0

    .line 23
    .line 24
    aget-byte p1, v1, v3

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-string p1, "UTF-16BE"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p1, "ISO-8859-1"

    .line 32
    .line 33
    :goto_0
    new-instance v0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "Reached EOF, file size="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    shl-long/2addr v0, v2

    .line 9
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    int-to-long v3, v3

    .line 14
    add-long/2addr v0, v3

    .line 15
    shl-long/2addr v0, v2

    .line 16
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    int-to-long v3, v3

    .line 21
    add-long/2addr v0, v3

    .line 22
    shl-long/2addr v0, v2

    .line 23
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    int-to-long v2, v2

    .line 28
    add-long/2addr v0, v2

    .line 29
    long-to-int v0, v0

    .line 30
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iget v1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    iput v2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    aget-byte v0, v1, v0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Reached EOF, file size="

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x1000

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 27
    .line 28
    array-length p1, p1

    .line 29
    iput p1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 30
    .line 31
    iput v4, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method
