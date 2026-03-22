.class public final Lcom/tencent/thumbplayer/tcmedia/g/b/g;
.super Lcom/tencent/thumbplayer/tcmedia/g/b/f;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Lcom/tencent/thumbplayer/tcmedia/g/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;-><init>(Landroid/media/MediaCodec;Lcom/tencent/thumbplayer/tcmedia/g/b/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/thumbplayer/tcmedia/g/b/e;)Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/f/a;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;Lcom/tencent/thumbplayer/tcmedia/g/b/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p1, Lcom/tencent/thumbplayer/tcmedia/g/b/e;->b:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->g:Lcom/tencent/thumbplayer/tcmedia/g/b/b;

    .line 10
    .line 11
    iget v2, v1, Lcom/tencent/thumbplayer/tcmedia/g/b/b;->a:I

    .line 12
    .line 13
    if-gt v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p1, Lcom/tencent/thumbplayer/tcmedia/g/b/e;->c:I

    .line 16
    .line 17
    iget v1, v1, Lcom/tencent/thumbplayer/tcmedia/g/b/b;->b:I

    .line 18
    .line 19
    if-gt v0, v1, :cond_1

    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/h/c;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;Lcom/tencent/thumbplayer/tcmedia/g/b/e;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->g:Lcom/tencent/thumbplayer/tcmedia/g/b/b;

    .line 26
    .line 27
    iget v1, v1, Lcom/tencent/thumbplayer/tcmedia/g/b/b;->c:I

    .line 28
    .line 29
    if-gt v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->e:Lcom/tencent/thumbplayer/tcmedia/g/b/e;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/g/b/e;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/e;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;->d:Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_0
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;->c:Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_1
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;->a:Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;

    .line 46
    .line 47
    return-object p1
.end method

.method public final j()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->f:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->e:Lcom/tencent/thumbplayer/tcmedia/g/b/e;

    .line 12
    .line 13
    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/g/b/e;->d:I

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VideoCodecWrapper["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x5d

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
