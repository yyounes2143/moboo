.class public Lcom/tencent/thumbplayer/tcmedia/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/api/proxy/ITPPreloadProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/c/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

.field private d:Lcom/tencent/thumbplayer/tcmedia/c/g$a;

.field private e:Lcom/tencent/thumbplayer/tcmedia/api/proxy/ITPPreloadProxy$IPreloadListener;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->f:Z

    .line 6
    .line 7
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/c/g$a;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/tencent/thumbplayer/tcmedia/c/g$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/g;Lcom/tencent/thumbplayer/tcmedia/c/g$1;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->d:Lcom/tencent/thumbplayer/tcmedia/c/g$a;

    .line 14
    .line 15
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/c/f;

    .line 16
    .line 17
    const-string v1, "TPPreloadProxyImpl"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/c/f;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->e:Lcom/tencent/thumbplayer/tcmedia/api/proxy/ITPPreloadProxy$IPreloadListener;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->a:Landroid/content/Context;

    .line 25
    .line 26
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->b:I

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/c/g;->a()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/c/g;)Lcom/tencent/thumbplayer/tcmedia/api/proxy/ITPPreloadProxy$IPreloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->e:Lcom/tencent/thumbplayer/tcmedia/api/proxy/ITPPreloadProxy$IPreloadListener;

    return-object p0
.end method

.method private a()V
    .locals 6

    .line 2
    const-string v0, "TPPreloadProxyImpl"

    const/4 v1, 0x3

    :goto_0
    if-lez v1, :cond_4

    iget-boolean v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->f:Z

    if-nez v2, :cond_4

    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/i;->a()Lcom/tencent/thumbplayer/tcmedia/c/i;

    move-result-object v2

    iget v3, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->b:I

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/tcmedia/c/i;->a(I)Lcom/tencent/thumbplayer/tcmedia/c/b;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/tencent/thumbplayer/tcmedia/c/b;->a()Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lcom/tencent/thumbplayer/tcmedia/c/b;->a()Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->d:Lcom/tencent/thumbplayer/tcmedia/c/g$a;

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->setLogListener(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDLProxyLogListener;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    const-string v3, "qq_is_vip"

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->isUserIsVip()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getUserUin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    const-string v3, "user_uin"

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getUserUin()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    const-string v3, "app_version_name"

    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getBuildNumber(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    const-string v3, "app_version_code"

    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getBuildNumber(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    const-string v3, "carrier_pesudo_code"

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getUserUpc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    const-string v3, "carrier_pesudo_state"

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getUserUpcState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    const-string v3, "external_network_ip"

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getOutNetIp()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->f:Z

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    const-string v2, "p2p so load failed"

    invoke-static {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_2
    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public getPlayErrorCodeStr(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public pushEvent(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/c/g;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->pushEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    const-string v0, "TPPreloadProxyImpl"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setPreloadListener(Lcom/tencent/thumbplayer/tcmedia/api/proxy/ITPPreloadProxy$IPreloadListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/c/f;

    .line 4
    .line 5
    const-string v0, "TPPreloadProxyImpl"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/c/f;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->e:Lcom/tencent/thumbplayer/tcmedia/api/proxy/ITPPreloadProxy$IPreloadListener;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->e:Lcom/tencent/thumbplayer/tcmedia/api/proxy/ITPPreloadProxy$IPreloadListener;

    .line 14
    .line 15
    return-void
.end method

.method public startClipPreload(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "[startClipPreload] Preloading clips."

    .line 2
    .line 3
    const-string v1, "TPPreloadProxyImpl"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const-string p1, "[startClipPreload] Fail to start clip preload: null download parameter list."

    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/c/g;->isAvailable()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/c/g;->a()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/c/g;->isAvailable()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const-string p1, "[startClipPreload] Fail to initialize proxy."

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->d:Lcom/tencent/thumbplayer/tcmedia/c/g$a;

    .line 45
    .line 46
    invoke-interface {v2, p1, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->startClipPreload(Ljava/lang/String;ILcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-gtz p1, :cond_2

    .line 51
    .line 52
    const-string p2, "[startClipPreload] Fail to start clip preload: invalid preload ID."

    .line 53
    .line 54
    invoke-static {v1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/g;->stopPreload(I)V

    .line 58
    .line 59
    .line 60
    return v0

    .line 61
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v3, 0x1

    .line 66
    const/4 v4, 0x0

    .line 67
    :goto_0
    if-ge v4, v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    check-cast v5, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->getUrl()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    const/4 v7, 0x0

    .line 82
    invoke-static {v6, v5, v7, v7}, Lcom/tencent/thumbplayer/tcmedia/c/k;->a(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;Ljava/util/Map;Ljava/util/Map;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadParam;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    iget-object v7, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->getDownloadFileID()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-interface {v7, p1, v3, v5, v6}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->setClipInfo(IILjava/lang/String;Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadParam;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_3

    .line 97
    .line 98
    const-string p2, "[startClipPreload] Fail to set clip info."

    .line 99
    .line 100
    invoke-static {v1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/g;->stopPreload(I)V

    .line 104
    .line 105
    .line 106
    return v0

    .line 107
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    :try_start_0
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    .line 111
    .line 112
    invoke-interface {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->startTask(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    return p1

    .line 116
    :catchall_0
    move-exception p2

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v3, "[startClipPreload] Fail to start task: "

    .line 120
    .line 121
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {v1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/g;->stopPreload(I)V

    .line 139
    .line 140
    .line 141
    return v0
.end method

.method public startPreload(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/thumbplayer/tcmedia/c/g;->startPreload(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public startPreload(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/c/g;->isAvailable()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/c/g;->a()V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/c/g;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, p2, p3, v0}, Lcom/tencent/thumbplayer/tcmedia/c/k;->a(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;Ljava/util/Map;Ljava/util/Map;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadParam;

    move-result-object p2

    :try_start_0
    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->d:Lcom/tencent/thumbplayer/tcmedia/c/g$a;

    invoke-interface {p3, p1, p2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->startPreload(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadParam;Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string p2, "TPPreloadProxyImpl"

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method public stopPreload(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/g;->c:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->stopPreload(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    const-string v0, "TPPreloadProxyImpl"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
