.class public Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;
.super Ljava/lang/Object;


# static fields
.field private static DOT:Ljava/lang/String; = "\\."

.field public static final ISOTT:Z = false

.field private static final TAG:Ljava/lang/String; = "TPPlayerConfig"

.field public static final VERSION:Ljava/lang/String; = "2.32.0.525"

.field private static appVersion:Ljava/lang/String; = ""

.field private static appVersionName:Ljava/lang/String; = null

.field public static beacon_log_host:Ljava/lang/String; = ""

.field public static beacon_policy_host:Ljava/lang/String; = ""

.field private static buildNum:J = -0x1L

.field private static host_config:Ljava/lang/String; = ""

.field private static mAbUserId:Ljava/lang/String; = ""

.field private static mEnableDataReport:Z = false

.field private static mEnablePlayerReport:Z = false

.field private static mGuid:Ljava/lang/String; = ""

.field private static mOutNetIp:Ljava/lang/String; = ""

.field private static mPlatform:I = -0x1

.field private static mProxyCacheDir:Ljava/lang/String; = null

.field private static mProxyDataDir:Ljava/lang/String; = null

.field private static mProxyMaxStorageSizeMB:J = 0x0L

.field private static mProxyMaxUseMemoryMB:J = 0x0L

.field private static mProxyServiceType:I = -0x1

.field private static mUseP2P:Z = true

.field private static mUserIsVip:Z = false

.field private static mUserUin:Ljava/lang/String; = null

.field private static mUserUpc:Ljava/lang/String; = ""

.field private static mUserUpcState:I


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

.method public static getAbUserId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mAbUserId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mAbUserId:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public static getAppBigVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->appVersion:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->DOT:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    const/4 v1, 0x4

    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    const-string v0, "."

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p0, "0.0.0"

    .line 47
    .line 48
    :cond_2
    :goto_0
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->appVersion:Ljava/lang/String;

    .line 49
    .line 50
    return-object p0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->appVersionName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->appVersionName:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 31
    .line 32
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->appVersionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    return-object p0

    .line 38
    :catchall_0
    return-object v0
.end method

.method public static getBuildNumber(Landroid/content/Context;)J
    .locals 4

    .line 1
    sget-wide v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->buildNum:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v2, v2, v0

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/appsflyer/internal/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/pm/PackageInfo;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sput-wide v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->buildNum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    return-wide v0

    .line 30
    :catchall_0
    const-string p0, "TPPlayerConfig"

    .line 31
    .line 32
    const-string v0, "getLongVersionCode less api 28"

    .line 33
    .line 34
    invoke-static {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-wide v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->buildNum:J

    .line 38
    .line 39
    return-wide v0
.end method

.method public static getGuid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mGuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getMediaDrmReuseEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->getMediaDrmReuseEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static getNewReportEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->getCoreEventProcessEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static getOutNetIp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mOutNetIp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getPlatform()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mPlatform:I

    .line 2
    .line 3
    return v0
.end method

.method public static getProxyCacheDir()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mProxyCacheDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getProxyConfigDir()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "httpproxy_config"

    .line 2
    .line 3
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->host_config:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    .line 16
    sget-object v3, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->host_config:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    return-object v2

    .line 28
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v1, "TPPlayerConfig"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-object v2
.end method

.method public static getProxyDataDir()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mProxyDataDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getProxyMaxStorageSizeMB()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mProxyMaxStorageSizeMB:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static getProxyMaxUseMemoryMB()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mProxyMaxUseMemoryMB:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static getProxyServiceType()I
    .locals 3

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mProxyServiceType:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget v2, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mPlatform:I

    .line 7
    .line 8
    if-eq v2, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    return v0
.end method

.method public static getUserUin()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mUserUin:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getUserUpc()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mUserUpc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getUserUpcState()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mUserUpcState:I

    .line 2
    .line 3
    return v0
.end method

.method public static getVideoMediaCodecCoexistMaxCnt()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->getVideoMediaCodecCoexistMaxCnt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static getWidevineProvisioningServerUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->getWidevineProvisioningServerUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static isDataReportEnable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mEnableDataReport:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isPlayerReportEnable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mEnablePlayerReport:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isUseP2P()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mUseP2P:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isUserIsVip()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mUserIsVip:Z

    .line 2
    .line 3
    return v0
.end method

.method public static parseHostConfig(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "beacon_log_host"

    .line 2
    .line 3
    const-string v1, "beacon_policy_host"

    .line 4
    .line 5
    const-string v2, "player_host_config"

    .line 6
    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string v4, "TPPlayerConfig"

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const-string p0, "parseHostConfig, config is null."

    .line 16
    .line 17
    :goto_0
    invoke-static {v4, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->host_config:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v5, "parseHostConfig:"

    .line 28
    .line 29
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v4, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->beacon_policy_host:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->beacon_log_host:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    :cond_2
    return-void

    .line 79
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v1, "parseHostConfig exception: "

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    goto :goto_0
.end method

.method public static setAbUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mAbUserId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setDataReportEnable(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mEnableDataReport:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setDebugEnable(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->setDebugEnable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setGuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mGuid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setMediaDrmReuseEnable(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->setMediaDrmReuseEnable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setNewReportEnable(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->setCoreEventProcessEnable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setOutNetIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mOutNetIp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setP2PEnable(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mUseP2P:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setPlatform(I)V
    .locals 0

    .line 1
    sput p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mPlatform:I

    .line 2
    .line 3
    return-void
.end method

.method public static setPlayerReportEnable(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mEnablePlayerReport:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setProxyCacheDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mProxyCacheDir:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setProxyDataDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mProxyDataDir:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setProxyMaxStorageSizeMB(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mProxyMaxStorageSizeMB:J

    .line 2
    .line 3
    return-void
.end method

.method public static setProxyMaxUseMemoryMB(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mProxyMaxUseMemoryMB:J

    .line 2
    .line 3
    return-void
.end method

.method public static setProxyServiceType(I)V
    .locals 0

    .line 1
    sput p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mProxyServiceType:I

    .line 2
    .line 3
    return-void
.end method

.method public static setUserIsVip(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mUserIsVip:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setUserUin(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mUserUin:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setUserUpc(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mUserUpc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setUserUpcState(I)V
    .locals 0

    .line 1
    sput p0, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->mUserUpcState:I

    .line 2
    .line 3
    return-void
.end method

.method public static setVideoMediaCodecCoexistMaxCnt(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->setVideoMediaCodecCoexistMaxCnt(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setWidevineProvisioningServerUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/config/TPPlayerCoreConfig;->setWidevineProvisioningServerUrl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
