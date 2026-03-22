.class public Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;
.super Ljava/lang/Object;


# static fields
.field private static mCoreEventProcessEnable:Z = false

.field private static mMediaDrmReuseEnable:Z = false

.field private static mVideoMediaCodecCoexistMaxCnt:I = 0x0

.field private static mWidevineProvisioningServerUrl:Ljava/lang/String; = ""


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

.method private static native _setMediaDrmReuseEnable(Z)V
.end method

.method private static native _setWidevineProvisioningServerUrl(Ljava/lang/String;)V
.end method

.method public static getCoreEventProcessEnable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->mCoreEventProcessEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public static getMediaDrmReuseEnable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->mMediaDrmReuseEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public static getVideoMediaCodecCoexistMaxCnt()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->mVideoMediaCodecCoexistMaxCnt:I

    .line 2
    .line 3
    return v0
.end method

.method public static getWidevineProvisioningServerUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->mWidevineProvisioningServerUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setCoreEventProcessEnable(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->mCoreEventProcessEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setMediaDrmReuseEnable(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryLoader;->isLibLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    const-string v0, "setMediaDrmReuseEnable, PlayerCore library has not been loaded"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->mMediaDrmReuseEnable:Z

    .line 15
    .line 16
    :try_start_0
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->_setMediaDrmReuseEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    const/4 v0, 0x4

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static setVideoMediaCodecCoexistMaxCnt(I)V
    .locals 0

    .line 1
    sput p0, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->mVideoMediaCodecCoexistMaxCnt:I

    .line 2
    .line 3
    return-void
.end method

.method public static setWidevineProvisioningServerUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryLoader;->isLibLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    const-string v0, "setWidevineProvisioningServerUrl,PlayerCore library has not been loaded"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->mWidevineProvisioningServerUrl:Ljava/lang/String;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->_setWidevineProvisioningServerUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    const/4 v0, 0x4

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
