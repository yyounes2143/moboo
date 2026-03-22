.class public Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$SingletonInstance;,
        Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TXFlutterEngineHolder"


# instance fields
.field private final mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFrontContextCount:I

.field private mIsEnterBack:Z

.field private mLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mFrontContextCount:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mIsEnterBack:Z

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mFrontContextCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$108(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mFrontContextCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mFrontContextCount:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic access$110(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mFrontContextCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mFrontContextCount:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic access$200(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mIsEnterBack:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mIsEnterBack:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->notifyResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;Landroid/app/Activity;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->findIndexByAct(Landroid/app/Activity;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->notifyEnterBack()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private findIndexByAct(Landroid/app/Activity;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-ne v2, p1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const/4 v1, -0x1

    .line 34
    :goto_1
    monitor-exit v0

    .line 35
    return v1

    .line 36
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method public static getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$SingletonInstance;->access$000()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private notifyEnterBack()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;->onEnterBack()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method private notifyResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;->onResume()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method


# virtual methods
.method public addAppLifeListener(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public attachBindLife(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, "TXFlutterEngineHolder"

    .line 6
    .line 7
    const-string v0, "TXFlutterEngineHolder is already attached"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    new-instance v0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;-><init>(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 22
    .line 23
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/app/Application;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public clearListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public destroy(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    const-string v0, "TXFlutterEngineHolder"

    .line 2
    .line 3
    const-string v1, "called engine holder destroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/app/Application;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 29
    .line 30
    return-void
.end method

.method public getActivityByIndex(I)Landroid/app/Activity;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge p1, v1, :cond_1

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/app/Activity;

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 34
    monitor-exit v0

    .line 35
    return-object p1

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method public getCurActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getActivityByIndex(I)Landroid/app/Activity;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public getPreActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mActivityList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x2

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getActivityByIndex(I)Landroid/app/Activity;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public isInForeground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mIsEnterBack:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public removeAppLifeListener(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->mListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method
