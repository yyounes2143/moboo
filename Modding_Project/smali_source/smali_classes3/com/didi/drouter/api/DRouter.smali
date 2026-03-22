.class public Lcom/didi/drouter/api/DRouter;
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

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/Object;)Lcom/didi/drouter/store/IRegister;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/didi/drouter/store/ServiceKey<",
            "TT;>;TT;)",
            "Lcom/didi/drouter/store/IRegister;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/Object;)Lcom/didi/drouter/store/IRegister;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterKey;Lcom/didi/drouter/router/IRouterHandler;)Lcom/didi/drouter/store/IRegister;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterKey;Lcom/didi/drouter/router/IRouterHandler;)Lcom/didi/drouter/store/IRegister;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/didi/drouter/utils/SystemUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    const-string p0, "host"

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p0, v0}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Application;
    .locals 1

    .line 1
    invoke-static {}, Lcom/didi/drouter/utils/SystemUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/service/ServiceLoader;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/didi/drouter/service/ServiceLoader<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/service/ServiceLoader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/didi/drouter/router/Request;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/didi/drouter/router/Request;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
