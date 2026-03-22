.class Lcom/tencent/liteav/audio2/LiteavAudioRecord3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::audio"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LiteavAudioRecord"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mBufferSize:I


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
    iput v0, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mBufferSize:I

    .line 6
    .line 7
    return-void
.end method

.method private static audioSourceToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string p0, "INVALID"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_1
    const-string p0, "VOICE_PERFORMANCE"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_2
    const-string p0, "UNPROCESSED"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_3
    const-string p0, "VOICE_COMMUNICATION"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_4
    const-string p0, "VOICE_RECOGNITION"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_5
    const-string p0, "CAMCORDER"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_6
    const-string p0, "VOICE_CALL"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_7
    const-string p0, "VOICE_DOWNLINK"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_8
    const-string p0, "VOICE_UPLINK"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_9
    const-string p0, "MIC"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_a
    const-string p0, "DEFAULT"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static createStartedAudioRecord(IIII)Landroid/media/AudioRecord;
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
    const-string v5, "LiteavAudioRecord"

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    :try_start_0
    new-instance v7, Landroid/media/AudioRecord;

    .line 10
    .line 11
    const/4 v11, 0x2

    .line 12
    move v8, p0

    .line 13
    move v9, p1

    .line 14
    move/from16 v10, p2

    .line 15
    .line 16
    move/from16 v12, p3

    .line 17
    .line 18
    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v7}, Landroid/media/AudioRecord;->getState()I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    if-ne v8, v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v7}, Landroid/media/AudioRecord;->startRecording()V

    .line 28
    .line 29
    .line 30
    const-string v8, "create AudioRecord success. sampleRate: %d, channelConfig: %d, bufferSize: %d, audio source: %s"

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-static {p0}, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->audioSourceToString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    new-array v13, v3, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v9, v13, v2

    .line 51
    .line 52
    aput-object v10, v13, v4

    .line 53
    .line 54
    aput-object v11, v13, v1

    .line 55
    .line 56
    aput-object v12, v13, v0

    .line 57
    .line 58
    invoke-static {v5, v8, v13}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-object v7

    .line 62
    :cond_0
    new-instance v8, Ljava/lang/RuntimeException;

    .line 63
    .line 64
    const-string v9, "AudioRecord is not initialized."

    .line 65
    .line 66
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :catchall_0
    move-object v7, v6

    .line 71
    :catchall_1
    invoke-static {p0}, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->audioSourceToString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    new-array v3, v3, [Ljava/lang/Object;

    .line 88
    .line 89
    aput-object p0, v3, v2

    .line 90
    .line 91
    aput-object p1, v3, v4

    .line 92
    .line 93
    aput-object v8, v3, v1

    .line 94
    .line 95
    aput-object v9, v3, v0

    .line 96
    .line 97
    const-string p0, "create AudioRecord failed. source: %s, sampleRate: %d, channelConfig: %d, bufferSize: %d"

    .line 98
    .line 99
    invoke-static {v5, p0, v3}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v7}, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->destroyAudioRecord(Landroid/media/AudioRecord;)V

    .line 103
    .line 104
    .line 105
    return-object v6
.end method

.method private static destroyAudioRecord(Landroid/media/AudioRecord;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

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
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    const-string v0, "stop AudioRecord failed."

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object p0, v1, v2

    .line 26
    .line 27
    const-string p0, "LiteavAudioRecord"

    .line 28
    .line 29
    invoke-static {p0, v0, v1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public getSessionId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mAudioRecord:Landroid/media/AudioRecord;

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mAudioRecord:Landroid/media/AudioRecord;

    .line 12
    .line 13
    invoke-virtual {v1, p1, p2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-gez p1, :cond_1

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x1

    .line 24
    new-array p2, p2, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object p1, p2, v0

    .line 27
    .line 28
    const-string p1, "LiteavAudioRecord"

    .line 29
    .line 30
    const-string v0, "read failed, %d"

    .line 31
    .line 32
    invoke-static {p1, v0, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    return p1
.end method

.method public startRecording(IIII)I
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x0

    .line 4
    filled-new-array {p1, v0, v1, v2}, [I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-ne p3, v0, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v1, 0xc

    .line 14
    .line 15
    :goto_0
    const/4 v3, 0x2

    .line 16
    invoke-static {p2, v1, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-gtz v4, :cond_1

    .line 21
    .line 22
    const-string v5, "AudioRecord.getMinBufferSize return error: "

    .line 23
    .line 24
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    new-array v6, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v7, "LiteavAudioRecord"

    .line 35
    .line 36
    invoke-static {v7, v5, v6}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    mul-int/2addr p3, p2

    .line 40
    if-ge v4, p3, :cond_2

    .line 41
    .line 42
    move v4, p3

    .line 43
    :cond_2
    move p3, v2

    .line 44
    :goto_1
    const/4 v5, 0x4

    .line 45
    if-ge p3, v5, :cond_6

    .line 46
    .line 47
    iget-object v6, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mAudioRecord:Landroid/media/AudioRecord;

    .line 48
    .line 49
    if-nez v6, :cond_6

    .line 50
    .line 51
    aget v6, p1, p3

    .line 52
    .line 53
    move v7, v0

    .line 54
    :goto_2
    if-gt v7, v3, :cond_5

    .line 55
    .line 56
    iget-object v8, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mAudioRecord:Landroid/media/AudioRecord;

    .line 57
    .line 58
    if-nez v8, :cond_5

    .line 59
    .line 60
    mul-int v8, v4, v7

    .line 61
    .line 62
    iput v8, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mBufferSize:I

    .line 63
    .line 64
    mul-int/lit8 v9, p4, 0x4

    .line 65
    .line 66
    if-ge v8, v9, :cond_3

    .line 67
    .line 68
    if-lt v7, v3, :cond_4

    .line 69
    .line 70
    :cond_3
    invoke-static {v6, p2, v1, v8}, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->createStartedAudioRecord(IIII)Landroid/media/AudioRecord;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    iput-object v8, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mAudioRecord:Landroid/media/AudioRecord;

    .line 75
    .line 76
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    add-int/lit8 p3, p3, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    iget-object p1, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mAudioRecord:Landroid/media/AudioRecord;

    .line 83
    .line 84
    if-nez p1, :cond_7

    .line 85
    .line 86
    const/4 p1, -0x1

    .line 87
    return p1

    .line 88
    :cond_7
    const/16 p1, -0x13

    .line 89
    .line 90
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 91
    .line 92
    .line 93
    return v2
.end method

.method public stopRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->destroyAudioRecord(Landroid/media/AudioRecord;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/tencent/liteav/audio2/LiteavAudioRecord3;->mAudioRecord:Landroid/media/AudioRecord;

    .line 8
    .line 9
    return-void
.end method
