.class Lcom/didi/drouter/router/InterceptorHandler;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/drouter/router/InterceptorHandler$Default;
    }
.end annotation


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

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v1, v2, v3

    .line 14
    .line 15
    const-string v1, ">> Enter request \"%s\" (related) interceptors"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/didi/drouter/router/InterceptorLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterMeta;)Ljava/util/Queue;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1, p0, p2}, Lcom/didi/drouter/router/InterceptorHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Queue;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Queue;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V
    .locals 9
    .param p0    # Ljava/util/Queue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/didi/drouter/router/IRouterInterceptor;",
            ">;",
            "Lcom/didi/drouter/router/Request;",
            "Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    check-cast v2, Lcom/didi/drouter/router/IRouterInterceptor;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v1, v0

    .line 22
    .line 23
    const-string p1, "<< Pass request \"%s\" interceptors"

    .line 24
    .line 25
    invoke-virtual {p0, p1, v1}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/didi/drouter/store/RouterMeta;

    .line 45
    .line 46
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {p1}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v3}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwww()Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v3}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v8, 0x4

    .line 79
    new-array v8, v8, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v5, v8, v0

    .line 82
    .line 83
    aput-object v6, v8, v1

    .line 84
    .line 85
    const/4 v0, 0x2

    .line 86
    aput-object v7, v8, v0

    .line 87
    .line 88
    const/4 v0, 0x3

    .line 89
    aput-object v3, v8, v0

    .line 90
    .line 91
    const-string v0, "interceptor \"%s\" execute, for request \"%s\", global:%s, priority:%s"

    .line 92
    .line 93
    invoke-virtual {v4, v0, v8}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/didi/drouter/router/InterceptorHandler$1;

    .line 97
    .line 98
    invoke-direct {v0, p0, p1, p2, v2}, Lcom/didi/drouter/router/InterceptorHandler$1;-><init>(Ljava/util/Queue;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;Lcom/didi/drouter/router/IRouterInterceptor;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;

    .line 102
    .line 103
    invoke-interface {v2, p1}, Lcom/didi/drouter/router/IRouterInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v1, v2, v3

    .line 14
    .line 15
    const-string v1, ">> Enter request \"%s\" (global) interceptors"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/didi/drouter/router/InterceptorLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Queue;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0, p0, p1}, Lcom/didi/drouter/router/InterceptorHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Queue;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Queue;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/didi/drouter/router/InterceptorHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Queue;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
