.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String; = "TPPlayerDecoderCapability"

.field private static mIsLibLoaded:Z


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryLoader;->loadLibIfNeeded(Landroid/content/Context;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->mIsLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->mIsLibLoaded:Z

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->mNativeContext:J

    .line 7
    .line 8
    return-void
.end method

.method private static native _addACodecBlacklist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;)Z
.end method

.method private static native _addACodecWhitelist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;)Z
.end method

.method private static native _addVCodecBlacklist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;)Z
.end method

.method private static native _addVCodecWhitelist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;)Z
.end method

.method private static native _getDecoderMaxCapabilityMap(I)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;",
            ">;"
        }
    .end annotation
.end method

.method private static native _isACodecCapabilitySupport(IIIIIII)Z
.end method

.method private static native _isVCodecCapabilitySupport(IIIIIII)Z
.end method

.method public static addACodecBlacklist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->isLibLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->_addACodecBlacklist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 22
    .line 23
    const-string p1, "Failed to call _addACodecBlacklist."

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 30
    .line 31
    const-string p1, "addACodecBlacklist: Failed to load native library."

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static addACodecWhitelist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->isLibLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->_addACodecWhitelist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 22
    .line 23
    const-string p1, "Failed to call _addVCodecWhitelist."

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 30
    .line 31
    const-string p1, "addACodecWhitelist: Failed to load native library."

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static addDRMLevel1Blacklist(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->addDRMLevel1Blacklist(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static addHDRBlackList(ILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->addHDRBlackList(ILjava/lang/String;Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static addHDRVideoDecoderTypeWhiteList(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->addHDRVideoDecoderTypeWhiteList(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static addHDRWhiteList(ILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->addHDRWhiteList(ILjava/lang/String;Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static addVCodecBlacklist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->isLibLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->_addVCodecBlacklist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 22
    .line 23
    const-string p1, "Failed to call _addVCodecBlacklist."

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 30
    .line 31
    const-string p1, "addVCodecBlacklist: Failed to load native library."

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static addVCodecWhitelist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->isLibLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->_addVCodecWhitelist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 22
    .line 23
    const-string p1, "Failed to call _addVCodecWhitelist."

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 30
    .line 31
    const-string p1, "addVCodecWhitelist :Failed to load native library."

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static getVCodecDecoderMaxCapabilityMap(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->isLibLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->_getDecoderMaxCapabilityMap(I)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 22
    .line 23
    const-string v0, "Failed to call _getDecoderMaxCapabilityMap."

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 30
    .line 31
    const-string v0, "Failed to load native library."

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p0
.end method

.method public static isACodecCapabilitySupport(IIIIIII)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne v0, p0, :cond_4

    .line 3
    .line 4
    const/16 v0, 0x1394

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x13b0

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    const-string v0, "audio/dts"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    const-string v0, "audio/ac3"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_2
    const-string v0, "audio/aac"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "audio/eac3"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "audio/flac"

    .line 31
    .line 32
    :goto_0
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->isInMediaCodecWhiteList(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_2
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->isAMediaCodecBlackListModel()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->isBlackListType(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    :cond_3
    const/4 p0, 0x0

    .line 53
    return p0

    .line 54
    :cond_4
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->isLibLoaded()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->_isACodecCapabilitySupport(IIIIIII)Z

    .line 61
    .line 62
    .line 63
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    return p0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    move-object p0, v0

    .line 67
    const/4 p1, 0x4

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 76
    .line 77
    const-string p1, "Failed to call _isACodecCapabilitySupport."

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_5
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 84
    .line 85
    const-string p1, "Failed to load native library."

    .line 86
    .line 87
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :pswitch_data_0
    .packed-switch 0x138a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isDDPlusSupported()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->isMediaCodecDDPlusSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static isDolbyDSSupported()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->isMediaCodecDolbyDSSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static isHDRsupport(III)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->isHDRsupport(III)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static isLibLoaded()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->mIsLibLoaded:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isVCodecCapabilitySupport(IIIIIII)Z
    .locals 2

    .line 1
    const/16 v0, 0x66

    .line 2
    .line 3
    if-ne v0, p0, :cond_7

    .line 4
    .line 5
    const/16 v0, 0x1a

    .line 6
    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, 0x8a

    .line 10
    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0xa6

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0xac

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x405

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "video/av01"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "video/hevc"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "video/x-vnd.on2.vp9"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const-string v0, "video/x-vnd.on2.vp8"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    const-string v0, "video/avc"

    .line 41
    .line 42
    :goto_0
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->isInMediaCodecWhiteList(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :cond_5
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->isVMediaCodecBlackListModel()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_6

    .line 55
    .line 56
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->isBlackListType(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    :cond_6
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_7
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->isLibLoaded()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_8

    .line 69
    .line 70
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPPlayerDecoderCapability;->_isVCodecCapabilitySupport(IIIIIII)Z

    .line 71
    .line 72
    .line 73
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    return p0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object p0, v0

    .line 77
    const/4 p1, 0x4

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 86
    .line 87
    const-string p1, "Failed to call _isVCodecCapabilitySupport."

    .line 88
    .line 89
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_8
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;

    .line 94
    .line 95
    const-string p1, "Failed to load native library."

    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public static setMediaCodecPreferredSoftwareComponent(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->setMediaCodecPreferredSoftwareComponent(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
