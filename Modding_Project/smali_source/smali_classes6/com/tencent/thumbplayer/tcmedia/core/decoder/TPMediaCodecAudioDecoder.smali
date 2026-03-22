.class public Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;
.super Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "TPMediaCodecAudioDecoder"


# instance fields
.field private mAudioFormat:I

.field private mChannelCount:I

.field private mCsd0Data:[B

.field private mEnableAudioPassThrough:Z

.field private mIsAdts:Z

.field private mMimeCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mMimeCandidates:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    .line 13
    .line 14
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    .line 15
    .line 16
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mAudioFormat:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mCsd0Data:[B

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mIsAdts:Z

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mEnableAudioPassThrough:Z

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public configCodec(Lcom/tencent/thumbplayer/tcmedia/g/b;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "configCodec: "

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "TPMediaCodecAudioDecoder"

    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    .line 10
    .line 11
    iget v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    .line 12
    .line 13
    invoke-static {p2, v0, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mCsd0Data:[B

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v3, "csd-0"

    .line 22
    .line 23
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2, v3, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mIsAdts:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v0, "configCodec: set is adts"

    .line 35
    .line 36
    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "is-adts"

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->mMediaCrypto:Landroid/media/MediaCrypto;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public getCodecName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->getDecoderName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TPMediaCodecAudioDecoder"

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mMimeCandidates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getMimeCandidates()Ljava/util/List;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->getMimeCandidates()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public initDecoder(Ljava/lang/String;IIII)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initDecoder, mimeType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channelCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " drmType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " audioFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "TPMediaCodecAudioDecoder"

    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    iput p4, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->mDrmType:I

    iput p5, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mAudioFormat:I

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mMimeCandidates:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mMimeCandidates:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public initDecoder(Ljava/lang/String;IIILandroid/view/Surface;III)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public processMediaCodecException(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method

.method public processOutputBuffer(Lcom/tencent/thumbplayer/tcmedia/g/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    .line 2
    .line 3
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->sampleRate:I

    .line 4
    .line 5
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    .line 6
    .line 7
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->channelCount:I

    .line 8
    .line 9
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mAudioFormat:I

    .line 10
    .line 11
    iput v0, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->format:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 20
    .line 21
    new-array v2, v1, [B

    .line 22
    .line 23
    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 24
    .line 25
    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    iput-object v2, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->data:[B

    .line 31
    .line 32
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 38
    .line 39
    if-gtz p3, :cond_1

    .line 40
    .line 41
    const-string p3, "TPMediaCodecAudioDecoder"

    .line 42
    .line 43
    const-string v0, "processOutputBuffer: bufferInfo.flags is BUFFER_FLAG_END_OF_STREAM, return EOS!"

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-static {v1, p3, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput v1, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->errCode:I

    .line 50
    .line 51
    :cond_1
    const/4 p3, 0x0

    .line 52
    invoke-virtual {p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a(IZ)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public processOutputConfigData(Lcom/tencent/thumbplayer/tcmedia/g/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a(IZ)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput p1, p4, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;->errCode:I

    .line 7
    .line 8
    return-void
.end method

.method public processOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 7

    .line 1
    const-string v0, "pcm-encoding"

    .line 2
    .line 3
    const-string v1, "channel-count"

    .line 4
    .line 5
    const-string v2, "sample-rate"

    .line 6
    .line 7
    const-string v3, "TPMediaCodecAudioDecoder"

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    move v0, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    .line 37
    .line 38
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    const/16 v2, 0x18

    .line 41
    .line 42
    if-lt v1, v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    const-string v0, "processOutputFormatChanged: MediaFormat.KEY_PCM_ENCODING: "

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v4, v3, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catch_1
    move-exception v0

    .line 69
    move-object v6, v0

    .line 70
    move v0, p1

    .line 71
    move-object p1, v6

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move p1, v4

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "processOutputFormatChanged got one exception: "

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/4 v1, 0x4

    .line 94
    invoke-static {v1, v3, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    move p1, v0

    .line 98
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "processOutputFormatChanged, mEnableAudioPassThrough:"

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mEnableAudioPassThrough:Z

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", mSampleRate: "

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", mChannelCount: "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, " mAudioFormat: "

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mAudioFormat:I

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, " pcmFormat:"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {v4, v3, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
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

.method public setParamBool(IZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mIsAdts:Z

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v2, 0x3

    .line 9
    if-ne p1, v2, :cond_1

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mEnableAudioPassThrough:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->getLogTag()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "setParamBool mEnableAudioPassThrough:"

    .line 20
    .line 21
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mEnableAudioPassThrough:Z

    .line 25
    .line 26
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {v1, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->setParamBool(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
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
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;->mCsd0Data:[B

    .line 6
    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPBaseMediaCodecDecoder;->setParamBytes(I[B)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
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
