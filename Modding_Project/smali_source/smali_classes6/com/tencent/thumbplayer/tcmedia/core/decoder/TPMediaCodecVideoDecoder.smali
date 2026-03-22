.class public Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;
.super Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;


# static fields
.field private static final DEVICE_NAME_VIVO_X5L:Ljava/lang/String; = "vivo X5L"

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final PIXEL_STRIDE_CONTINUOUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TPMediaCodecVideoDecode"

.field private static final YUV420P_PLANAR_COUNT:I = 0x3


# instance fields
.field private mCropBottom:I

.field private mCropLeft:I

.field private mCropRight:I

.field private mCropTop:I

.field private mCsd0Data:[B

.field private mCsd1Data:[B

.field private mCsd2Data:[B

.field private mDisableDolbyVisionComponent:Z

.field private mDolbyVisionLevel:I

.field private mDolbyVisionProfile:I

.field private mEnableMediaCodecOutputData:Z

.field private mMimeCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRotation:I

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;-><init>(I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mEnableMediaCodecOutputData:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mMimeCandidates:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    .line 15
    .line 16
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    .line 17
    .line 18
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropLeft:I

    .line 19
    .line 20
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropRight:I

    .line 21
    .line 22
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropTop:I

    .line 23
    .line 24
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropBottom:I

    .line 25
    .line 26
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mRotation:I

    .line 27
    .line 28
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionProfile:I

    .line 29
    .line 30
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionLevel:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCsd0Data:[B

    .line 34
    .line 35
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCsd1Data:[B

    .line 36
    .line 37
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCsd2Data:[B

    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDisableDolbyVisionComponent:Z

    .line 40
    .line 41
    return-void
.end method

.method private copyVideoDataFromImage(Landroid/media/Image;Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x23

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p2, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->format:I

    .line 12
    .line 13
    iput v2, p2, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->errCode:I

    .line 14
    .line 15
    const-string p1, "TPMediaCodecVideoDecode"

    .line 16
    .line 17
    const-string p2, "copyVideoDataFromImage: image format not support!"

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    invoke-static {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->format:I

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v4, p2, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->lineSize:[I

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    array-length v4, v4

    .line 44
    if-ge v4, v2, :cond_2

    .line 45
    .line 46
    :cond_1
    new-array v4, v2, [I

    .line 47
    .line 48
    iput-object v4, p2, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->lineSize:[I

    .line 49
    .line 50
    :cond_2
    iget-object v4, p2, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->videoData:[[B

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    array-length v4, v4

    .line 55
    if-ge v4, v2, :cond_4

    .line 56
    .line 57
    :cond_3
    new-array v4, v2, [[B

    .line 58
    .line 59
    iput-object v4, p2, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->videoData:[[B

    .line 60
    .line 61
    :cond_4
    move v9, v0

    .line 62
    :goto_0
    if-ge v9, v2, :cond_6

    .line 63
    .line 64
    if-nez v9, :cond_5

    .line 65
    .line 66
    move v4, v0

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    const/4 v4, 0x1

    .line 69
    :goto_1
    shr-int v7, v1, v4

    .line 70
    .line 71
    shr-int v8, v3, v4

    .line 72
    .line 73
    aget-object v6, p1, v9

    .line 74
    .line 75
    move-object v5, p0

    .line 76
    move-object v10, p2

    .line 77
    invoke-direct/range {v5 .. v10}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->copyVideoDataFromPlane(Landroid/media/Image$Plane;IIILcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v9, v9, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    return-void
.end method

.method private copyVideoDataFromPlane(Landroid/media/Image$Plane;IIILcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p5, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->lineSize:[I

    .line 6
    .line 7
    aput p2, v1, p4

    .line 8
    .line 9
    mul-int/2addr p2, p3

    .line 10
    iget-object p3, p5, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->videoData:[[B

    .line 11
    .line 12
    aget-object v1, p3, p4

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    array-length v1, v1

    .line 17
    if-ge v1, p2, :cond_1

    .line 18
    .line 19
    :cond_0
    new-array v1, p2, [B

    .line 20
    .line 21
    aput-object v1, p3, p4

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne p3, v2, :cond_2

    .line 30
    .line 31
    iget-object p1, p5, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->videoData:[[B

    .line 32
    .line 33
    aget-object p1, p1, p4

    .line 34
    .line 35
    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    :goto_0
    if-ge v1, p2, :cond_3

    .line 40
    .line 41
    iget-object p3, p5, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->videoData:[[B

    .line 42
    .line 43
    aget-object p3, p3, p4

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    mul-int/2addr v2, v1

    .line 50
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    aput-byte v2, p3, v1

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method

.method private processOutputData(Lcom/tencent/thumbplayer/tcmedia/g/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V
    .locals 5

    .line 1
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "TPMediaCodecVideoDecode"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x4

    .line 8
    if-ne v0, v4, :cond_0

    .line 9
    .line 10
    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 11
    .line 12
    if-gtz p3, :cond_0

    .line 13
    .line 14
    const-string p3, "processOutputBuffer: bufferInfo.flags is BUFFER_FLAG_END_OF_STREAM, return EOS!"

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-static {v0, v2, p3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput v1, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->format:I

    .line 21
    .line 22
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->errCode:I

    .line 23
    .line 24
    invoke-virtual {p1, p2, v3}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a(IZ)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->b(I)Landroid/media/Image;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    if-nez p3, :cond_1

    .line 33
    .line 34
    iput v1, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->format:I

    .line 35
    .line 36
    const/4 p3, 0x3

    .line 37
    iput p3, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->errCode:I

    .line 38
    .line 39
    invoke-virtual {p1, p2, v3}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a(IZ)V

    .line 40
    .line 41
    .line 42
    const-string p1, "processOutputBuffer: getOutputImage return null"

    .line 43
    .line 44
    invoke-static {v4, v2, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->copyVideoDataFromImage(Landroid/media/Image;Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, v3}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a(IZ)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public configCodec(Lcom/tencent/thumbplayer/tcmedia/g/b;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    .line 4
    .line 5
    invoke-static {p2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "rotation-degrees"

    .line 10
    .line 11
    iget v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mRotation:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "vivo X5L"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    .line 29
    .line 30
    iget v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    .line 31
    .line 32
    mul-int/2addr v1, v2

    .line 33
    const-string v2, "max-input-size"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCsd0Data:[B

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const-string v2, "csd-0"

    .line 43
    .line 44
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCsd1Data:[B

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const-string v2, "csd-1"

    .line 56
    .line 57
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCsd2Data:[B

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const-string v2, "csd-2"

    .line 69
    .line 70
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    const-string v1, "video/dolby-vision"

    .line 78
    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_4

    .line 84
    .line 85
    iget p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionProfile:I

    .line 86
    .line 87
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->convertDolbyVisionToOmxProfile(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    const-string v1, "profile"

    .line 92
    .line 93
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    iget p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionLevel:I

    .line 97
    .line 98
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->convertDolbyVisionToOmxLevel(I)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    const-string v1, "level"

    .line 103
    .line 104
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-boolean p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mEnableMediaCodecOutputData:Z

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    if-eqz p2, :cond_5

    .line 111
    .line 112
    const-string p2, "color-format"

    .line 113
    .line 114
    const v2, 0x7f420888

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p2, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const/4 p2, 0x0

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->mMediaCrypto:Landroid/media/MediaCrypto;

    .line 122
    .line 123
    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->mSurface:Landroid/view/Surface;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :goto_1
    const/4 p2, 0x1

    .line 131
    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->d(I)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public getCodecName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionProfile:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDisableDolbyVisionComponent:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionLevel:I

    .line 10
    .line 11
    invoke-static {p1, v0, v1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->getDolbyVisionDecoderName(Ljava/lang/String;IIZ)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->getDecoderName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TPMediaCodecVideoDecode"

    .line 2
    .line 3
    return-object v0
.end method

.method public getMimeCandidates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mMimeCandidates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getMimeCandidates()Ljava/util/List;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->getMimeCandidates()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public initDecoder(Ljava/lang/String;IIII)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public initDecoder(Ljava/lang/String;IIILandroid/view/Surface;III)Z
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initDecoder, mimeType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dvProfile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dvLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "TPMediaCodecVideoDecode"

    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    iput p4, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mRotation:I

    iput-object p5, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->mSurface:Landroid/view/Surface;

    iput p6, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->mDrmType:I

    iput p7, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionProfile:I

    iput p8, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionLevel:I

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mMimeCandidates:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const-string p2, "video/dolby-vision"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionProfile:I

    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->convertDolbyVisionToOmxProfile(I)I

    move-result p2

    const/4 p4, 0x4

    if-lt p2, p4, :cond_0

    const/16 p4, 0x100

    if-gt p2, p4, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-boolean p4, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDisableDolbyVisionComponent:Z

    const-string p5, "video/hevc"

    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    :goto_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mMimeCandidates:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object p4, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mMimeCandidates:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mMimeCandidates:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    return p3
.end method

.method public processMediaCodecException(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method

.method public processOutputBuffer(Lcom/tencent/thumbplayer/tcmedia/g/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    .line 2
    .line 3
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->width:I

    .line 4
    .line 5
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    .line 6
    .line 7
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->height:I

    .line 8
    .line 9
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropLeft:I

    .line 10
    .line 11
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->cropLeft:I

    .line 12
    .line 13
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropRight:I

    .line 14
    .line 15
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->cropRight:I

    .line 16
    .line 17
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropTop:I

    .line 18
    .line 19
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->cropTop:I

    .line 20
    .line 21
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropBottom:I

    .line 22
    .line 23
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->cropBottom:I

    .line 24
    .line 25
    const/16 v0, 0xa7

    .line 26
    .line 27
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->format:I

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mEnableMediaCodecOutputData:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->processOutputData(Lcom/tencent/thumbplayer/tcmedia/g/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public processOutputConfigData(Lcom/tencent/thumbplayer/tcmedia/g/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->errCode:I

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->processOutputBuffer(Lcom/tencent/thumbplayer/tcmedia/g/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public processOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 6

    .line 1
    const-string v0, "crop-right"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "crop-top"

    .line 8
    .line 9
    const-string v3, "crop-bottom"

    .line 10
    .line 11
    const-string v4, "crop-left"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    const-string v5, "width"

    .line 37
    .line 38
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iput v5, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    .line 43
    .line 44
    const-string v5, "height"

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iput v5, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropLeft:I

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropRight:I

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropTop:I

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropBottom:I

    .line 77
    .line 78
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v0, "processOutputFormatChanged: mVideoWidth: "

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ", mVideoHeight: "

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", mCropLeft: "

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropLeft:I

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, ", mCropRight: "

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropRight:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, ", mCropTop: "

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropTop:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v0, ", mCropBottom: "

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCropBottom:I

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const/4 v0, 0x2

    .line 145
    const-string v1, "TPMediaCodecVideoDecode"

    .line 146
    .line 147
    invoke-static {v0, v1, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public setOperateRate(F)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->setOperateRate(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setOutputSurface(Landroid/view/Surface;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mEnableMediaCodecOutputData:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->setOutputSurface(Landroid/view/Surface;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setParamBool(IZ)Z
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->mStarted:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mEnableMediaCodecOutputData:Z

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->getLogTag()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "BOOL_ENABLE_MEDIACODEC_OUTPUT_DATA failed. need set before start, mStart="

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->mStarted:Z

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, ", api level is "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, ", support api level = 21"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v0, v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v0, 0x6

    .line 52
    if-ne v0, p1, :cond_3

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->mStarted:Z

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iput-boolean p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mDisableDolbyVisionComponent:Z

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->getLogTag()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v3, "BOOL_FORCE_DOLBY_VISION_USE_HEVC_CODEC failed. need set before start, mStart="

    .line 68
    .line 69
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->mStarted:Z

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->setParamBool(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public setParamBytes(I[B)Z
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCsd0Data:[B

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0xc9

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCsd1Data:[B

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/16 v0, 0xca

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;->mCsd2Data:[B

    .line 20
    .line 21
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->setParamBytes(I[B)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public setParamObject(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->setParamObject(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
