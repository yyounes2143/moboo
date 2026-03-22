.class public Lcom/tencent/thumbplayer/tcmedia/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->data:[[B

    array-length v1, v0

    if-lez v1, :cond_1

    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->height:I

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->width:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget p0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->rotation:I

    invoke-static {v0, v2, v1, p0}, Lcom/tencent/thumbplayer/tcmedia/a/a;->a([BIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a([BIII)Landroid/graphics/Bitmap;
    .locals 8

    .line 2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-eqz p3, :cond_0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p3

    invoke-virtual {v6, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static b(Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;)[Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->data:[[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lez v1, :cond_2

    .line 5
    .line 6
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->height:I

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->width:I

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    array-length v0, v0

    .line 16
    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->data:[[B

    .line 20
    .line 21
    array-length v3, v2

    .line 22
    if-ge v1, v3, :cond_1

    .line 23
    .line 24
    aget-object v2, v2, v1

    .line 25
    .line 26
    iget v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->width:I

    .line 27
    .line 28
    iget v4, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->height:I

    .line 29
    .line 30
    iget v5, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPVideoFrame;->rotation:I

    .line 31
    .line 32
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/thumbplayer/tcmedia/a/a;->a([BIII)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    aput-object v2, v0, v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0

    .line 42
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method
