.class public Lcom/changdu/component/core/CDComponent;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static a:Lcom/changdu/component/core/CDComponentConfigs;

.field public static volatile b:Lcom/changdu/component/core/CDComponent;

.field public static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/core/CDComponentConfigs;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 7
    .line 8
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

.method public static getInstance()Lcom/changdu/component/core/CDComponent;
    .locals 2

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->b:Lcom/changdu/component/core/CDComponent;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/changdu/component/core/CDComponent;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/changdu/component/core/CDComponent;->b:Lcom/changdu/component/core/CDComponent;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/changdu/component/core/CDComponent;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/changdu/component/core/CDComponent;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/changdu/component/core/CDComponent;->b:Lcom/changdu/component/core/CDComponent;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/changdu/component/core/CDComponent;->b:Lcom/changdu/component/core/CDComponent;

    .line 27
    .line 28
    return-object v0
.end method

.method public static init(Landroid/app/Application;Lcom/changdu/component/core/CDComponentConfigs;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sput-object p0, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 10
    .line 11
    sput-object p1, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/changdu/component/core/CDComponentConfigs;->a(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/ExceptionInInitializerError;

    .line 18
    .line 19
    const-string p1, "\u521d\u59cb\u5316\u7ec4\u4ef6\u5e93\u5931\u8d25\uff0c\u4f20\u5165\u7684\u53c2\u6570 Context \u6216 CDComponentConfigs \u53c2\u6570\u4e0d\u80fd\u4e3a null"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static isReady()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

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


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->x:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->u:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->v:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->w:I

    .line 4
    .line 5
    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->g:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoreVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->d:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->q:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getGoogleAdId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/component/core/CDComponentConfigs;->getGoogleAdId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getGoogleAdIdTimeConsuming()J
    .locals 2

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/component/core/CDComponentConfigs;->getGoogleAdIdTimeConsuming()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->h:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getLangId()I
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->f:I

    .line 4
    .line 5
    return v0
.end method

.method public getMt()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->e:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->t:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getProductId()Ljava/lang/Long;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->B:Ljava/lang/Long;

    .line 4
    .line 5
    return-object v0
.end method

.method public getProductX()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->c:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->s:I

    .line 4
    .line 5
    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->r:I

    .line 4
    .line 5
    return v0
.end method

.method public getSendId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->A:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getServerProtocolVersion()I
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->o:I

    .line 4
    .line 5
    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->i:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getUserAccountName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->k:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getUserHeadFrameUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->n:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getUserHeadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->m:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->j:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getUserNickname()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->l:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getWebViewToolbarHeightInDP()I
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iget v0, v0, Lcom/changdu/component/core/CDComponentConfigs;->p:I

    .line 4
    .line 5
    return v0
.end method

.method public requestGoogleAdId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/changdu/component/core/googleadid/GoogleAdId;->getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v1, "\u4e0d\u80fd\u5728\u4e3b\u7ebf\u7a0b\u4e2d\u8bf7\u6c42\u83b7\u53d6 Google Advertising Id !!!"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setAppIdKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, v0, Lcom/changdu/component/core/CDComponentConfigs;->b:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->g:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setCoreVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->d:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setGoogleAdId(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/changdu/component/core/CDComponentConfigs;->setGoogleAdId(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->h:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setLangId(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->f:I

    .line 4
    .line 5
    return-void
.end method

.method public setProductId(Ljava/lang/Long;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->B:Ljava/lang/Long;

    .line 4
    .line 5
    return-void
.end method

.method public setProductX(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->c:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setSendId(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->A:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setServerProtocolVersion(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->o:I

    .line 4
    .line 5
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->i:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setUserAccountName(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->k:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setUserHeadFrameUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->n:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setUserHeadUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->m:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->j:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setUserNickname(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->l:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setWebViewToolbarHeightInDP(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/core/CDComponent;->a:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput p1, v0, Lcom/changdu/component/core/CDComponentConfigs;->p:I

    .line 4
    .line 5
    return-void
.end method
