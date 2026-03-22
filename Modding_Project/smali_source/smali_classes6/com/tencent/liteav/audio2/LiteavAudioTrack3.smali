.class public Lcom/tencent/liteav/audio2/LiteavAudioTrack3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::audio"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LiteavAudioTrack2"


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSize:I

.field private mPlayBuffer:[B

.field private mSystemOSVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mBufferSize:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mSystemOSVersion:I

    .line 8
    .line 9
    return-void
.end method

.method private static createStartedAudioTrack(IIII)Landroid/media/AudioTrack;
    .locals 14

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x4

    .line 5
    const/4 v4, 0x1

    .line 6
    const-string v5, "LiteavAudioTrack2"

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    :try_start_0
    new-instance v7, Landroid/media/AudioTrack;

    .line 10
    .line 11
    const/4 v11, 0x2

    .line 12
    const/4 v13, 0x1

    .line 13
    move v9, p0

    .line 14
    move v10, p1

    .line 15
    move/from16 v12, p2

    .line 16
    .line 17
    move/from16 v8, p3

    .line 18
    .line 19
    invoke-direct/range {v7 .. v13}, Landroid/media/AudioTrack;-><init>(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-virtual {v7}, Landroid/media/AudioTrack;->getState()I

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-ne v8, v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v7}, Landroid/media/AudioTrack;->play()V

    .line 29
    .line 30
    .line 31
    const-string v8, "create AudioTrack success. sampleRate: %d, channelConfig: %d, bufferSize: %d, streamType: %s"

    .line 32
    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    invoke-static/range {p3 .. p3}, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->streamTypeToString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    new-array v13, v3, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v9, v13, v2

    .line 52
    .line 53
    aput-object v10, v13, v4

    .line 54
    .line 55
    aput-object v11, v13, v1

    .line 56
    .line 57
    aput-object v12, v13, v0

    .line 58
    .line 59
    invoke-static {v5, v8, v13}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object v7

    .line 63
    :cond_0
    new-instance v8, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    const-string v9, "AudioTrack is not initialized."

    .line 66
    .line 67
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    :catchall_0
    move-object v7, v6

    .line 72
    :catchall_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-static/range {p3 .. p3}, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->streamTypeToString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    new-array v3, v3, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object p0, v3, v2

    .line 91
    .line 92
    aput-object p1, v3, v4

    .line 93
    .line 94
    aput-object v8, v3, v1

    .line 95
    .line 96
    aput-object v9, v3, v0

    .line 97
    .line 98
    const-string p0, "create AudioTrack failed. sampleRate: %d, channelConfig: %d, bufferSize: %d, streamType: %s"

    .line 99
    .line 100
    invoke-static {v5, p0, v3}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v7}, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->destroyAudioTrack(Landroid/media/AudioTrack;)V

    .line 104
    .line 105
    .line 106
    return-object v6
.end method

.method private static destroyAudioTrack(Landroid/media/AudioTrack;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    const-string v0, "stop AudioTrack failed."

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object p0, v1, v2

    .line 29
    .line 30
    const-string p0, "LiteavAudioTrack2"

    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static streamTypeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const-string p0, "STREAM_INVALID"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string p0, "STREAM_NOTIFICATION"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    const-string p0, "STREAM_ALARM"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const-string p0, "STREAM_MUSIC"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_3
    const-string p0, "STREAM_RING"

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_4
    const-string p0, "STREAM_SYSTEM"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const-string p0, "STREAM_VOICE_CALL"

    .line 37
    .line 38
    return-object p0
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mBufferSize:I

    .line 2
    .line 3
    return v0
.end method

.method public startPlayout(IIII)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    filled-new-array {p1, v0, v1, v2}, [I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x4

    .line 9
    if-ne p3, v2, :cond_0

    .line 10
    .line 11
    move p3, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p3, 0xc

    .line 14
    .line 15
    :goto_0
    const/4 v3, 0x2

    .line 16
    invoke-static {p2, p3, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-gtz v4, :cond_1

    .line 21
    .line 22
    const-string p1, "AudioTrack.getMinBufferSize return error: "

    .line 23
    .line 24
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-array p2, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string p3, "LiteavAudioTrack2"

    .line 35
    .line 36
    invoke-static {p3, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, -0x2

    .line 40
    return p1

    .line 41
    :cond_1
    move v5, v0

    .line 42
    :goto_1
    if-ge v5, v1, :cond_5

    .line 43
    .line 44
    iget-object v6, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mAudioTrack:Landroid/media/AudioTrack;

    .line 45
    .line 46
    if-nez v6, :cond_5

    .line 47
    .line 48
    aget v6, p1, v5

    .line 49
    .line 50
    move v7, v2

    .line 51
    :goto_2
    if-gt v7, v3, :cond_4

    .line 52
    .line 53
    iget-object v8, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mAudioTrack:Landroid/media/AudioTrack;

    .line 54
    .line 55
    if-nez v8, :cond_4

    .line 56
    .line 57
    mul-int v8, v4, v7

    .line 58
    .line 59
    iput v8, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mBufferSize:I

    .line 60
    .line 61
    mul-int/lit8 v9, p4, 0x4

    .line 62
    .line 63
    if-ge v8, v9, :cond_2

    .line 64
    .line 65
    if-lt v7, v3, :cond_3

    .line 66
    .line 67
    :cond_2
    invoke-static {p2, p3, v8, v6}, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->createStartedAudioTrack(IIII)Landroid/media/AudioTrack;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    iput-object v8, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mAudioTrack:Landroid/media/AudioTrack;

    .line 72
    .line 73
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object p1, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mAudioTrack:Landroid/media/AudioTrack;

    .line 80
    .line 81
    if-nez p1, :cond_6

    .line 82
    .line 83
    const/4 p1, -0x1

    .line 84
    return p1

    .line 85
    :cond_6
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mSystemOSVersion:I

    .line 90
    .line 91
    const/16 p1, -0x13

    .line 92
    .line 93
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 94
    .line 95
    .line 96
    return v0
.end method

.method public stopPlayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->destroyAudioTrack(Landroid/media/AudioTrack;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mAudioTrack:Landroid/media/AudioTrack;

    .line 8
    .line 9
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;IIZ)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    .line 9
    .line 10
    iget p2, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mSystemOSVersion:I

    .line 11
    .line 12
    const/16 v0, 0x15

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-lt p2, v0, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mAudioTrack:Landroid/media/AudioTrack;

    .line 18
    .line 19
    invoke-virtual {p2, p1, p3, p4}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p2, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mPlayBuffer:[B

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    array-length p2, p2

    .line 29
    if-ge p2, p3, :cond_3

    .line 30
    .line 31
    :cond_2
    new-array p2, p3, [B

    .line 32
    .line 33
    iput-object p2, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mPlayBuffer:[B

    .line 34
    .line 35
    :cond_3
    iget-object p2, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mPlayBuffer:[B

    .line 36
    .line 37
    invoke-virtual {p1, p2, v2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mAudioTrack:Landroid/media/AudioTrack;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/tencent/liteav/audio2/LiteavAudioTrack3;->mPlayBuffer:[B

    .line 43
    .line 44
    invoke-virtual {p1, p2, v2, p3}, Landroid/media/AudioTrack;->write([BII)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    :goto_0
    if-gez p1, :cond_4

    .line 49
    .line 50
    const-string p2, "write audio data to AudioTrack failed. "

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-array p2, v2, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string p3, "LiteavAudioTrack2"

    .line 63
    .line 64
    invoke-static {p3, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return v1

    .line 68
    :cond_4
    return p1
.end method
