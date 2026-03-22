.class public final Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;
.super Ljava/lang/Object;


# static fields
.field private static final MEDIA_DECODER_INFO_KEY:Ljava/lang/String; = "DecoderInfos_Key"

.field private static MEDIA_DECODER_VERSION:Ljava/lang/String; = "2.32.0.525.min"

.field private static final MEDIA_DECODER_VERSION_KEY:Ljava/lang/String; = "Version_Key"

.field private static final TAG:Ljava/lang/String; = "TPMediaDecoderList"

.field private static sDecoderInfos:[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static buildCacheDecoderVersion()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->MEDIA_DECODER_VERSION:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    const-string v1, "_"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getProductBoard()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getProductDevice()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getApiLevel()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method private static cacheDecoderInfos(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "DecoderInfos_Key"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;->put(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    const-string p0, "TPMediaDecoderList"

    .line 8
    .line 9
    const-string p1, "cache decode infos failed"

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-static {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static cacheVersion(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "Version_Key"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    const-string p0, "TPMediaDecoderList"

    .line 8
    .line 9
    const-string p1, "cache version failed"

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-static {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static getCachedDecoderInfos(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;)[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "DecoderInfos_Key"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;->getAsObject(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :catchall_0
    const-string p0, "TPMediaDecoderList"

    .line 11
    .line 12
    const-string v0, "get decoder info failed"

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-static {v1, p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method private static getCachedVersion(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "TPMediaDecoderList"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "Version_Key"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "version:"

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :catchall_0
    const/4 p0, 0x4

    .line 25
    const-string v1, "get version failed"

    .line 26
    .line 27
    invoke-static {p0, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method private static final getCodecInfos()[Landroid/media/MediaCodecInfo;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/MediaCodecList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "getCodecInfos MediaCodecList "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Landroid/media/MediaCodecInfo;

    .line 37
    .line 38
    return-object v0
.end method

.method private static final getLocalCacheMediaCodecList(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;)[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;
    .locals 6

    .line 1
    const-string v0, "getLocalCacheMediaCodecList"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->getCachedVersion(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->buildCacheDecoderVersion()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->getCachedDecoderInfos(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;)[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "getCachedDecoderInfos length "

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    array-length v2, p0

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    array-length v0, p0

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_0
    if-ge v2, v0, :cond_0

    .line 48
    .line 49
    aget-object v3, p0, v2

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v5, "getLocalCacheMediaCodecList MediaCodecList codecName: "

    .line 54
    .line 55
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->getDecoderName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v5, " ,DecoderMimeType: "

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->getDecoderMimeType()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v1, v3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    return-object p0

    .line 88
    :cond_1
    const/4 p0, 0x0

    .line 89
    return-object p0
.end method

.method private static final getSystemMediaCodecList()[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;
    .locals 14

    .line 1
    const-string v0, "getSystemMediaCodecList"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    array-length v3, v0

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    if-ge v5, v3, :cond_3

    .line 24
    .line 25
    aget-object v6, v0, v5

    .line 26
    .line 27
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-nez v7, :cond_2

    .line 32
    .line 33
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    array-length v8, v7

    .line 38
    move v9, v4

    .line 39
    :goto_1
    if-ge v9, v8, :cond_2

    .line 40
    .line 41
    aget-object v10, v7, v9

    .line 42
    .line 43
    new-instance v11, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    invoke-virtual {v6, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 50
    .line 51
    .line 52
    move-result-object v13

    .line 53
    invoke-direct {v11, v10, v12, v13}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->isValidDecoder()Z

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    if-eqz v12, :cond_1

    .line 61
    .line 62
    new-instance v12, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v13, "MediaCodecList codecName "

    .line 65
    .line 66
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v13, " supportedType "

    .line 77
    .line 78
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-static {v1, v10}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    new-array v0, v0, [Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, [Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 111
    .line 112
    return-object v0
.end method

.method public static final declared-synchronized getTPMediaDecoderInfos(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;)[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->sDecoderInfos:[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->initCodecList(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;)[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->sDecoderInfos:[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->sDecoderInfos:[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    new-array p0, p0, [Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :cond_1
    :try_start_1
    array-length v1, p0

    .line 27
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, [Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object p0

    .line 35
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p0
.end method

.method private static final initCodecList(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;)[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->getLocalCacheMediaCodecList(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;)[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->getSystemMediaCodecList()[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->storeLocalCacheMediaCodecList(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method private static final storeLocalCacheMediaCodecList(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "storeLocalCacheMediaCodecList"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->cacheDecoderInfos(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->buildCacheDecoderVersion()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderList;->cacheVersion(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
