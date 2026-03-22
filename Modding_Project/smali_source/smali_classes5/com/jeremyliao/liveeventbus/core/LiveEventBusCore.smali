.class public final Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$SingletonHolder;,
        Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$InnerConsole;,
        Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$LiveEvent;,
        Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$ObserverWrapper;
    }
.end annotation


# instance fields
.field private autoClear:Z

.field private final bus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$LiveEvent<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final config:Lcom/jeremyliao/liveeventbus/core/Config;

.field final console:Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$InnerConsole;

.field private isRegisterReceiver:Z

.field private lifecycleObserverAlwaysActive:Z

.field private logger:Lcom/jeremyliao/liveeventbus/logger/LoggerManager;

.field private final observableConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jeremyliao/liveeventbus/core/ObservableConfig;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Lcom/jeremyliao/liveeventbus/ipc/receiver/LebIpcReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/jeremyliao/liveeventbus/core/Config;

    invoke-direct {v0}, Lcom/jeremyliao/liveeventbus/core/Config;-><init>()V

    iput-object v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->config:Lcom/jeremyliao/liveeventbus/core/Config;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->isRegisterReceiver:Z

    .line 5
    new-instance v1, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$InnerConsole;

    invoke-direct {v1, p0}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$InnerConsole;-><init>(Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;)V

    iput-object v1, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->console:Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$InnerConsole;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->bus:Ljava/util/Map;

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->observableConfigs:Ljava/util/Map;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->lifecycleObserverAlwaysActive:Z

    .line 9
    iput-boolean v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->autoClear:Z

    .line 10
    new-instance v0, Lcom/jeremyliao/liveeventbus/logger/LoggerManager;

    new-instance v1, Lcom/jeremyliao/liveeventbus/logger/DefaultLogger;

    invoke-direct {v1}, Lcom/jeremyliao/liveeventbus/logger/DefaultLogger;-><init>()V

    invoke-direct {v0, v1}, Lcom/jeremyliao/liveeventbus/logger/LoggerManager;-><init>(Lcom/jeremyliao/liveeventbus/logger/Logger;)V

    iput-object v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->logger:Lcom/jeremyliao/liveeventbus/logger/LoggerManager;

    .line 11
    new-instance v0, Lcom/jeremyliao/liveeventbus/ipc/receiver/LebIpcReceiver;

    invoke-direct {v0}, Lcom/jeremyliao/liveeventbus/ipc/receiver/LebIpcReceiver;-><init>()V

    iput-object v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->receiver:Lcom/jeremyliao/liveeventbus/ipc/receiver/LebIpcReceiver;

    .line 12
    invoke-virtual {p0}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->registerReceiver()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;-><init>()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->bus:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->observableConfigs:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->lifecycleObserverAlwaysActive:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1400(Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->autoClear:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1600(Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->isRegisterReceiver:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;)Lcom/jeremyliao/liveeventbus/logger/LoggerManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->logger:Lcom/jeremyliao/liveeventbus/logger/LoggerManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static get()Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;
    .locals 1

    .line 1
    invoke-static {}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$SingletonHolder;->access$100()Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public config()Lcom/jeremyliao/liveeventbus/core/Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->config:Lcom/jeremyliao/liveeventbus/core/Config;

    return-object v0
.end method

.method public config(Ljava/lang/String;)Lcom/jeremyliao/liveeventbus/core/ObservableConfig;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->observableConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->observableConfigs:Ljava/util/Map;

    new-instance v1, Lcom/jeremyliao/liveeventbus/core/ObservableConfig;

    invoke-direct {v1}, Lcom/jeremyliao/liveeventbus/core/ObservableConfig;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->observableConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jeremyliao/liveeventbus/core/ObservableConfig;

    return-object p1
.end method

.method public enableLogger(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->logger:Lcom/jeremyliao/liveeventbus/logger/LoggerManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/jeremyliao/liveeventbus/logger/LoggerManager;->setEnable(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public registerReceiver()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->isRegisterReceiver:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->getApp()Landroid/app/Application;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    new-instance v1, Landroid/content/IntentFilter;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "intent.action.ACTION_LEB_IPC"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v3, 0x1a

    .line 25
    .line 26
    if-lt v2, v3, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->receiver:Lcom/jeremyliao/liveeventbus/ipc/receiver/LebIpcReceiver;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-static {v0, v2, v1, v3}, Lcom/jeremyliao/liveeventbus/core/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->receiver:Lcom/jeremyliao/liveeventbus/ipc/receiver/LebIpcReceiver;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->isRegisterReceiver:Z

    .line 42
    .line 43
    :cond_2
    :goto_1
    return-void
.end method

.method public setAutoClear(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->autoClear:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLifecycleObserverAlwaysActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->lifecycleObserverAlwaysActive:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLogger(Lcom/jeremyliao/liveeventbus/logger/Logger;)V
    .locals 1
    .param p1    # Lcom/jeremyliao/liveeventbus/logger/Logger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->logger:Lcom/jeremyliao/liveeventbus/logger/LoggerManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/jeremyliao/liveeventbus/logger/LoggerManager;->setLogger(Lcom/jeremyliao/liveeventbus/logger/Logger;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized with(Ljava/lang/String;Ljava/lang/Class;)Lcom/jeremyliao/liveeventbus/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/jeremyliao/liveeventbus/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->bus:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->bus:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$LiveEvent;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$LiveEvent;-><init>(Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->bus:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/jeremyliao/liveeventbus/core/Observable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-object p1

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method
