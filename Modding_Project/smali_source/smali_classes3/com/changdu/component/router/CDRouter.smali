.class public final Lcom/changdu/component/router/CDRouter;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ#\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0004\u0008\u0000\u0010\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0013H\u0007\u00a2\u0006\u0002\u0010\u0014J7\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0004\u0008\u0000\u0010\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00132\u0012\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0016\"\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0017J\"\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0019\"\u0004\u0008\u0000\u0010\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0013H\u0007J;\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0019\"\u0004\u0008\u0000\u0010\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00132\u0012\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0016\"\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u001bJ$\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u000e\u001a\u00020 H\u0007J5\u0010!\u001a\u00020\u001d\"\u0004\u0008\u0000\u0010\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00132\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\"\u001a\u0002H\u0011H\u0007\u00a2\u0006\u0002\u0010#J\u000e\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u001dJ\u000e\u0010&\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u001dR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/changdu/component/router/CDRouter;",
        "",
        "()V",
        "mHasInitialized",
        "",
        "getSensorsDataService",
        "Lcom/changdu/component/router/biz/ISensorsDataModuleService;",
        "init",
        "",
        "application",
        "Landroid/app/Application;",
        "invokeRouterHandler",
        "targetUrl",
        "",
        "routerHandlerCallback",
        "Lcom/didi/drouter/router/RouterCallback;",
        "invokeRouterService",
        "T",
        "targetServiceInterface",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Ljava/lang/Object;",
        "constructorParameters",
        "",
        "(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;",
        "invokeRouterServiceList",
        "",
        "constructorsParameters",
        "(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/util/List;",
        "registerDynamicRouterHandler",
        "Lcom/didi/drouter/store/IRegister;",
        "lifecycleOwner",
        "Landroidx/lifecycle/Lifecycle;",
        "Lcom/didi/drouter/router/IRouterHandler;",
        "registerDynamicService",
        "targetServiceImpl",
        "(Ljava/lang/Class;Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Lcom/didi/drouter/store/IRegister;",
        "unregisterDynamicRouterHandler",
        "register",
        "unregisterDynamicService",
        "router_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/component/router/CDRouter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mHasInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/router/CDRouter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/router/CDRouter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final registerDynamicRouterHandler(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;Lcom/didi/drouter/router/IRouterHandler;)Lcom/didi/drouter/store/IRegister;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/didi/drouter/router/IRouterHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/didi/drouter/store/RouterKey;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/Lifecycle;)Lcom/didi/drouter/store/RouterKey;

    .line 4
    :cond_0
    invoke-static {p0, p2}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterKey;Lcom/didi/drouter/router/IRouterHandler;)Lcom/didi/drouter/store/IRegister;

    move-result-object p0

    return-object p0
.end method

.method public static final registerDynamicRouterHandler(Ljava/lang/String;Lcom/didi/drouter/router/IRouterHandler;)Lcom/didi/drouter/store/IRegister;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/didi/drouter/router/IRouterHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p0, v0, p1, v1, v0}, Lcom/changdu/component/router/CDRouter;->registerDynamicRouterHandler$default(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;Lcom/didi/drouter/router/IRouterHandler;ILjava/lang/Object;)Lcom/didi/drouter/store/IRegister;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic registerDynamicRouterHandler$default(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;Lcom/didi/drouter/router/IRouterHandler;ILjava/lang/Object;)Lcom/didi/drouter/store/IRegister;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/changdu/component/router/CDRouter;->registerDynamicRouterHandler(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;Lcom/didi/drouter/router/IRouterHandler;)Lcom/didi/drouter/store/IRegister;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final registerDynamicService(Ljava/lang/Class;Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Lcom/didi/drouter/store/IRegister;
    .locals 0
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/Lifecycle;",
            "TT;)",
            "Lcom/didi/drouter/store/IRegister;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/store/ServiceKey;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/Lifecycle;)Lcom/didi/drouter/store/ServiceKey;

    .line 4
    :cond_0
    invoke-static {p0, p2}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/Object;)Lcom/didi/drouter/store/IRegister;

    move-result-object p0

    return-object p0
.end method

.method public static final registerDynamicService(Ljava/lang/Class;Ljava/lang/Object;)Lcom/didi/drouter/store/IRegister;
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/didi/drouter/store/IRegister;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p0, v0, p1, v1, v0}, Lcom/changdu/component/router/CDRouter;->registerDynamicService$default(Ljava/lang/Class;Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;ILjava/lang/Object;)Lcom/didi/drouter/store/IRegister;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic registerDynamicService$default(Ljava/lang/Class;Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;ILjava/lang/Object;)Lcom/didi/drouter/store/IRegister;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/changdu/component/router/CDRouter;->registerDynamicService(Ljava/lang/Class;Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Lcom/didi/drouter/store/IRegister;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final getSensorsDataService()Lcom/changdu/component/router/biz/ISensorsDataModuleService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Lcom/changdu/component/router/biz/ISensorsDataModuleService;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/changdu/component/router/CDRouter;->invokeRouterService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/changdu/component/router/biz/ISensorsDataModuleService;

    .line 8
    .line 9
    return-object v0
.end method

.method public final init(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-boolean v0, Lcom/changdu/component/router/CDRouter;->mHasInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/changdu/component/router/CDRouter;->mHasInitialized:Z

    .line 8
    .line 9
    invoke-static {p1}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final invokeRouterHandler(Ljava/lang/String;Lcom/didi/drouter/router/RouterCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/didi/drouter/router/RouterCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/didi/drouter/router/Request;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/didi/drouter/router/Request;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0, p2}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/didi/drouter/router/RouterCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :catchall_0
    return-void
.end method

.method public final invokeRouterService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/service/ServiceLoader;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final varargs invokeRouterService(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/service/ServiceLoader;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final invokeRouterServiceList(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/service/ServiceLoader;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 2
    :catchall_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final varargs invokeRouterServiceList(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/service/ServiceLoader;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 4
    :catchall_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final unregisterDynamicRouterHandler(Lcom/didi/drouter/store/IRegister;)V
    .locals 0
    .param p1    # Lcom/didi/drouter/store/IRegister;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/didi/drouter/store/IRegister;->unregister()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final unregisterDynamicService(Lcom/didi/drouter/store/IRegister;)V
    .locals 0
    .param p1    # Lcom/didi/drouter/store/IRegister;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/didi/drouter/store/IRegister;->unregister()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
