.class public Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$StringProperty;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$LongProperty;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$IntegerProperty;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$BooleanProperty;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$EventId;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;
    }
.end annotation


# static fields
.field public static final BEACON_LOG_HOST_KEY:Ljava/lang/String; = "beacon_log_host"

.field public static final BEACON_POLICY_HOST_KEY:Ljava/lang/String; = "beacon_policy_host"

.field public static final EVENT_ID_APP_ENTER_BACKGROUND:I = 0x186a1

.field public static final EVENT_ID_APP_ENTER_FOREGROUND:I = 0x186a2

.field public static final INVALID_CELLULAR_FLOW:I = -0x1

.field public static final INVALID_SUGGEST_BITRATE:I = -0x1

.field public static final PLYAER_HOST_KEY:Ljava/lang/String; = "player_host_config"

.field public static final PROPERTY_AB_USER_ID:Ljava/lang/String; = "PROPERTY_AbUserId"

.field public static final PROPERTY_ENABLE_DATA_REPORT:Ljava/lang/String; = "PROPERTY_EnableDataReport"

.field public static final PROPERTY_ENABLE_NEW_REPORT:Ljava/lang/String; = "PROPERTY_EnableNewReport"

.field public static final PROPERTY_ENABLE_PLAYER_REPORT:Ljava/lang/String; = "PROPERTY_EnablePlayerReport"

.field public static final PROPERTY_MEDIA_DRM_REUSE:Ljava/lang/String; = "PROPERTY_MediaDrmReuse"

.field public static final PROPERTY_PROXY_MAX_USE_MEMORY_MB:Ljava/lang/String; = "PROPERTY_ProxyMaxUseMemoryMB"

.field public static final PROPERTY_VIDEO_MEDIACODEC_CO_EXIST_MAX_CNT:Ljava/lang/String; = "PROPERTY_VideoMediaCodecCoexistMaxCnt"

.field public static final PROPERTY_WIDEVINE_PROVISIONING_SERVER_URL:Ljava/lang/String; = "PROPERTY_WidevineProvisioningServerUrl"

.field public static final PROXY_HOST_KEY:Ljava/lang/String; = "httpproxy_config"

.field private static final TAG:Ljava/lang/String; = "TPThumbPlayer[TPPlayerMgr.java]"

.field public static final TP_DOWNLOAD_PROXY_MODULE_NAME:Ljava/lang/String; = "DownloadProxy"

.field public static final TP_PLAYERCORE_MODULE_NAME:Ljava/lang/String; = "TPCore"

.field private static mAppContext:Landroid/content/Context;

.field private static final mBoolPropertyNameToValueCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBooleanPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mIntegerPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mIntegerPropertyNameToValueCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsInit:Z

.field private static final mLongPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mLongPropertyNameToValueCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final mStringPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mStringPropertyNameToValueCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mBoolPropertyNameToValueCache:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIntegerPropertyNameToValueCache:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mStringPropertyNameToValueCache:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mLongPropertyNameToValueCache:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mBooleanPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 35
    .line 36
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$6;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$6;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "PROPERTY_MediaDrmReuse"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$7;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$7;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "PROPERTY_EnableDataReport"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$8;

    .line 57
    .line 58
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$8;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "PROPERTY_EnablePlayerReport"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$9;

    .line 67
    .line 68
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$9;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "PROPERTY_EnableNewReport"

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance v0, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mStringPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 82
    .line 83
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$10;

    .line 84
    .line 85
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$10;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v2, "PROPERTY_AbUserId"

    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$11;

    .line 94
    .line 95
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$11;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "PROPERTY_WidevineProvisioningServerUrl"

    .line 99
    .line 100
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    new-instance v0, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIntegerPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 109
    .line 110
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$12;

    .line 111
    .line 112
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$12;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v2, "PROPERTY_VideoMediaCodecCoexistMaxCnt"

    .line 116
    .line 117
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    new-instance v0, Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mLongPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 126
    .line 127
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$13;

    .line 128
    .line 129
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$13;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v2, "PROPERTY_ProxyMaxUseMemoryMB"

    .line 133
    .line 134
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
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

.method public static synthetic access$000()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->initInAsyncThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$200()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->setExternalProperties()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getCellularDataCost()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/i;->a()Lcom/tencent/thumbplayer/tcmedia/c/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getProxyServiceType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/c/i;->a(I)Lcom/tencent/thumbplayer/tcmedia/c/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/b;->a()Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    const/4 v2, 0x2

    .line 25
    invoke-interface {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->getNativeInfo(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/b;->a(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public static getLibVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIsInit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "DownloadProxy"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxyHelper;->getNativeLibVersion()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const-string v0, "TPCore"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryLoader;->getLibVersion()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v1, "libName:"

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "player not initialized"

    .line 56
    .line 57
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static getOfflineRecordDurationMs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxyHelper;->getRecordDuration(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getOfflineRecordVinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxyHelper;->checkVideoStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static declared-synchronized getPropertyBoolean(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->getPropertyBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getPropertyBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 2
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mBoolPropertyNameToValueCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v0

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getPropertyInteger(Ljava/lang/String;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->getPropertyInteger(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getPropertyInteger(Ljava/lang/String;I)I
    .locals 2

    .line 2
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIntegerPropertyNameToValueCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v0

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getPropertyLong(Ljava/lang/String;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->getPropertyLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getPropertyLong(Ljava/lang/String;J)J
    .locals 2

    .line 2
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mLongPropertyNameToValueCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v0

    return-wide p1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mStringPropertyNameToValueCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getSuggestedBitrate()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/i;->a()Lcom/tencent/thumbplayer/tcmedia/c/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getProxyServiceType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/c/i;->a(I)Lcom/tencent/thumbplayer/tcmedia/c/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/b;->a()Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    invoke-interface {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->getNativeInfo(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/b;->a(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public static getThumbPlayerVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2.32.0.525"

    .line 2
    .line 3
    return-object v0
.end method

.method private static initAsyncWithWait()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a()Lcom/tencent/thumbplayer/tcmedia/utils/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->c()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$2;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$2;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private static initAsyncWithoutWait()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a()Lcom/tencent/thumbplayer/tcmedia/utils/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->d()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$3;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$3;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static initInAsyncThread()V
    .locals 5

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->a()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/b;->a(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Init SDK, initAsyncWithWait  TPBeaconReportWrapper init, times: "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->e()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "TPThumbPlayer[TPPlayerMgr.java]"

    .line 37
    .line 38
    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/a;->a(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Init SDK, initAsyncWithWait  TPDrmCapability init, times: "

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->e()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-static {v1, v3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->init(Landroid/content/Context;Z)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "Init SDK, initAsyncWithWait all times: "

    .line 76
    .line 77
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->d()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static initSdk(Landroid/content/Context;Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;->getPlatform()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->initSdk(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized initSdk(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 2
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIsInit:Z

    if-eqz v1, :cond_0

    const-string p0, "TPThumbPlayer[TPPlayerMgr.java]"

    const-string p1, "Init SDK, has init sdk"

    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIsInit:Z

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/utils/d;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/d;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->a()V

    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->preInitSync(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->initAsyncWithWait()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->initSync()V

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->initAsyncWithoutWait()V

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "TPThumbPlayer[TPPlayerMgr.java]"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Init SDK, TPPlayer  wait initSync finish, times: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->c()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string p0, "TPThumbPlayer[TPPlayerMgr.java]"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Init SDK, TPPlayer wait initSync InterruptedException, times: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->c()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string p0, "TPThumbPlayer[TPPlayerMgr.java]"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Init SDK, TPPlayer wait initSync ExecutionException, times: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->c()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "TPThumbPlayer[TPPlayerMgr.java]"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Init SDK, TPPlayer all times: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->d()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private static initSync()V
    .locals 5

    .line 1
    const-string v0, "TPThumbPlayer[TPPlayerMgr.java]"

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/utils/d;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/d;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->a()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryLoader;->loadLibIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v2

    .line 18
    invoke-static {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "Init SDK, initSync so load times: "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->d()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static isProxyEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->isUseP2P()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxyHelper;->isReadyForPlay()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public static isThumbPlayerEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryLoader;->isLibLoadedAndTryToLoad()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static postEvent(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/utils/f;->a(IIILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static preInitSync(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->a()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setGuid(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setPlatform(I)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$1;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$1;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->setLogCallback(Lcom/tencent/thumbplayer/tcmedia/core/common/ITPNativeLogCallback;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p1, "Init SDK, preInitSync all times: "

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/d;->d()J

    .line 37
    .line 38
    .line 39
    move-result-wide p1

    .line 40
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "TPThumbPlayer[TPPlayerMgr.java]"

    .line 48
    .line 49
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static setDebugEnable(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setDebugEnable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static declared-synchronized setExternalProperties()V
    .locals 5

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mBoolPropertyNameToValueCache:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map$Entry;

    .line 25
    .line 26
    sget-object v3, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mBooleanPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v3, v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;->setPropertyValue(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIntegerPropertyNameToValueCache:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/util/Map$Entry;

    .line 72
    .line 73
    sget-object v3, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIntegerPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;

    .line 84
    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v3, v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;->setPropertyValue(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mStringPropertyNameToValueCache:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Ljava/util/Map$Entry;

    .line 116
    .line 117
    sget-object v3, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mStringPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;

    .line 128
    .line 129
    if-eqz v3, :cond_4

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-interface {v3, v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;->setPropertyValue(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mLongPropertyNameToValueCache:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_7

    .line 154
    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Ljava/util/Map$Entry;

    .line 160
    .line 161
    sget-object v3, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mLongPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;

    .line 172
    .line 173
    if-eqz v3, :cond_6

    .line 174
    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-interface {v3, v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;->setPropertyValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    monitor-exit v0

    .line 184
    return-void

    .line 185
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    throw v1
.end method

.method public static setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->parseHostConfig(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setLibLoader(Lcom/tencent/thumbplayer/tcmedia/api/ITPModuleLoader;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIsInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$4;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$4;-><init>(Lcom/tencent/thumbplayer/tcmedia/api/ITPModuleLoader;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryLoader;->setLibLoader(Lcom/tencent/thumbplayer/tcmedia/core/common/ITPNativeLibraryExternalLoader;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$5;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$5;-><init>(Lcom/tencent/thumbplayer/tcmedia/api/ITPModuleLoader;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxyHelper;->setNativeLibLoader(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDLProxyNativeLibLoader;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "player has init"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static setOnLogListener(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->setOnLogListener(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setOutNetIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setOutNetIp(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized setPropertyBool(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIsInit:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mBoolPropertyNameToValueCache:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mBooleanPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const-string p1, "TPThumbPlayer[TPPlayerMgr.java]"

    .line 32
    .line 33
    const-string v1, "not found handler of property, propertyName:"

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;->setPropertyValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mBoolPropertyNameToValueCache:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    throw p0
.end method

.method public static declared-synchronized setPropertyInteger(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIsInit:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIntegerPropertyNameToValueCache:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIntegerPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const-string p1, "TPThumbPlayer[TPPlayerMgr.java]"

    .line 32
    .line 33
    const-string v1, "not found handler of property, propertyName:"

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;->setPropertyValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIntegerPropertyNameToValueCache:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    throw p0
.end method

.method public static declared-synchronized setPropertyLong(Ljava/lang/String;J)V
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIsInit:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mLongPropertyNameToValueCache:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mLongPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const-string p1, "TPThumbPlayer[TPPlayerMgr.java]"

    .line 32
    .line 33
    const-string p2, "not found handler of property, propertyName:"

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;->setPropertyValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mLongPropertyNameToValueCache:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    throw p0
.end method

.method public static declared-synchronized setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mIsInit:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mStringPropertyNameToValueCache:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mStringPropertyNameToPropertyHandlerTables:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string p1, "TPThumbPlayer[TPPlayerMgr.java]"

    .line 28
    .line 29
    const-string v1, "not found handler of property, propertyName:"

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :cond_1
    :try_start_2
    invoke-interface {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;->setPropertyValue(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->mStringPropertyNameToValueCache:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    throw p0
.end method

.method public static setProxyEnable(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setP2PEnable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setProxyMaxStorageSizeMB(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setProxyMaxStorageSize: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " MB."

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "TPThumbPlayer[TPPlayerMgr.java]"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setProxyMaxStorageSizeMB(J)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/i;->a()Lcom/tencent/thumbplayer/tcmedia/c/i;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/i;->a(J)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static setProxyServiceType(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setProxyServiceType(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setTPProxyAdapter(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPProxyAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxyHelper;->setTPProxyAdapter(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPProxyAdapter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setUpcInfo(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setUserUpc(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setUserUpcState(I)V

    .line 5
    .line 6
    .line 7
    const v0, 0x186a3

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, p1, v1, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/f;->a(IIILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static setUserInfo(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setUserUin(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setUserIsVip(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
