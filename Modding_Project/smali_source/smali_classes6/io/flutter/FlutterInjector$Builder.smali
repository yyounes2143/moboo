.class public final Lio/flutter/FlutterInjector$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/FlutterInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;
    }
.end annotation


# instance fields
.field private deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

.field private flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;


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

.method private fillDefaults()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/FlutterInjector$Builder;->flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/flutter/embedding/engine/FlutterJNI$Factory;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/flutter/embedding/engine/FlutterJNI$Factory;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/flutter/FlutterInjector$Builder;->flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/FlutterInjector$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;-><init>(Lio/flutter/FlutterInjector$Builder;Lio/flutter/FlutterInjector$1;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lio/flutter/FlutterInjector$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lio/flutter/FlutterInjector$Builder;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    new-instance v0, Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 33
    .line 34
    iget-object v1, p0, Lio/flutter/FlutterInjector$Builder;->flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

    .line 35
    .line 36
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterJNI$Factory;->provideFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lio/flutter/FlutterInjector$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Ljava/util/concurrent/ExecutorService;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lio/flutter/FlutterInjector$Builder;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 46
    .line 47
    :cond_2
    return-void
.end method


# virtual methods
.method public build()Lio/flutter/FlutterInjector;
    .locals 6

    .line 1
    invoke-direct {p0}, Lio/flutter/FlutterInjector$Builder;->fillDefaults()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/flutter/FlutterInjector;

    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/FlutterInjector$Builder;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 7
    .line 8
    iget-object v2, p0, Lio/flutter/FlutterInjector$Builder;->deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    .line 9
    .line 10
    iget-object v3, p0, Lio/flutter/FlutterInjector$Builder;->flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

    .line 11
    .line 12
    iget-object v4, p0, Lio/flutter/FlutterInjector$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-direct/range {v0 .. v5}, Lio/flutter/FlutterInjector;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;Lio/flutter/embedding/engine/FlutterJNI$Factory;Ljava/util/concurrent/ExecutorService;Lio/flutter/FlutterInjector$1;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)Lio/flutter/FlutterInjector$Builder;
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/FlutterInjector$Builder;->deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lio/flutter/FlutterInjector$Builder;
    .locals 0
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/FlutterInjector$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFlutterJNIFactory(Lio/flutter/embedding/engine/FlutterJNI$Factory;)Lio/flutter/FlutterInjector$Builder;
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/FlutterJNI$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/FlutterInjector$Builder;->flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFlutterLoader(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/FlutterInjector$Builder;
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/loader/FlutterLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/FlutterInjector$Builder;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 2
    .line 3
    return-object p0
.end method
