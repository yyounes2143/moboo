.class public Lcom/tencent/liteav/extensions/codec/HardwareAacDecoder;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final a:Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;

    .line 5
    .line 6
    sget v1, Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper$a;->b:I

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/liteav/extensions/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/extensions/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;->processFrame(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getCacheSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/extensions/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;

    .line 2
    .line 3
    iget v0, v0, Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;->b:I

    .line 4
    .line 5
    return v0
.end method

.method public getOutputChannelCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/extensions/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;->a:Landroid/media/MediaFormat;

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    const-string v2, "channel-count"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "getOutputChannelCount failed. "

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v3, "HardwareAacDecoder"

    .line 31
    .line 32
    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return v1
.end method

.method public getOutputSampleRate()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/extensions/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;->a:Landroid/media/MediaFormat;

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    const-string v2, "sample-rate"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "getOutputSampleRate failed. "

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v3, "HardwareAacDecoder"

    .line 31
    .line 32
    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return v1
.end method

.method public init(IILjava/nio/ByteBuffer;)Z
    .locals 1

    .line 1
    const-string v0, "audio/mp4a-latm"

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "mime"

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "csd-0"

    .line 13
    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/tencent/liteav/extensions/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;->a(Landroid/media/MediaFormat;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public unInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/extensions/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/extensions/codec/AacMediaCodecWrapper;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
