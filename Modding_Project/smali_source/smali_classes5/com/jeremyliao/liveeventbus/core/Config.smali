.class public Lcom/jeremyliao/liveeventbus/core/Config;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public autoClear(Z)Lcom/jeremyliao/liveeventbus/core/Config;
    .locals 1

    .line 1
    invoke-static {}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->get()Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->setAutoClear(Z)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public enableLogger(Z)Lcom/jeremyliao/liveeventbus/core/Config;
    .locals 1

    .line 1
    invoke-static {}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->get()Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->enableLogger(Z)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public lifecycleObserverAlwaysActive(Z)Lcom/jeremyliao/liveeventbus/core/Config;
    .locals 1

    .line 1
    invoke-static {}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->get()Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->setLifecycleObserverAlwaysActive(Z)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/jeremyliao/liveeventbus/core/Config;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->init(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->get()Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->registerReceiver()V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setLogger(Lcom/jeremyliao/liveeventbus/logger/Logger;)Lcom/jeremyliao/liveeventbus/core/Config;
    .locals 1
    .param p1    # Lcom/jeremyliao/liveeventbus/logger/Logger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->get()Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->setLogger(Lcom/jeremyliao/liveeventbus/logger/Logger;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
