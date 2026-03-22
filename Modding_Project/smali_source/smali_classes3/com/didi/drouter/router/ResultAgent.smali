.class Lcom/didi/drouter/router/ResultAgent;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/didi/drouter/router/Result;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/LifecycleObserver;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterResult;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/didi/drouter/router/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/didi/drouter/router/Request;Ljava/util/Collection;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V
    .locals 2
    .param p1    # Lcom/didi/drouter/router/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/didi/drouter/router/Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/drouter/router/Request;",
            "Ljava/util/Collection<",
            "Lcom/didi/drouter/router/Request;",
            ">;",
            "Lcom/didi/drouter/router/Result;",
            "Lcom/didi/drouter/router/RouterCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Lcom/didi/drouter/router/ResultAgent$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/didi/drouter/router/ResultAgent$1;-><init>(Lcom/didi/drouter/router/ResultAgent;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/LifecycleObserver;

    .line 24
    .line 25
    sget-object v0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-class v0, Lcom/didi/drouter/router/IRouterResult;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/service/ServiceLoader;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/didi/drouter/router/IRouterResult;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterResult;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 52
    .line 53
    iput-object p4, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

    .line 54
    .line 55
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    if-eqz p4, :cond_0

    .line 64
    .line 65
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    check-cast p4, Lcom/didi/drouter/router/Request;

    .line 70
    .line 71
    sget-object v0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 72
    .line 73
    invoke-virtual {p4}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 81
    .line 82
    invoke-virtual {p4}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    iget-object p2, p1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 91
    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    new-instance p2, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 95
    .line 96
    invoke-direct {p2, p0, p1}, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/didi/drouter/router/ResultAgent;Lcom/didi/drouter/router/Request;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p2}, Lcom/didi/drouter/utils/RouterExecutor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void
.end method

.method public static declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const-class v1, Lcom/didi/drouter/router/ResultAgent;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    monitor-exit v1

    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/didi/drouter/router/Result;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_5

    .line 18
    .line 19
    iget-object v3, v2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    iget-object v3, v2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-le v3, v0, :cond_1

    .line 42
    .line 43
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "be careful, all request \"%s\" will be cleared"

    .line 48
    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    aput-object p0, v0, v5

    .line 53
    .line 54
    invoke-virtual {v3, v4, v0}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    :goto_0
    iget-object p0, v2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, v2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 85
    .line 86
    iget-object v3, v3, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 87
    .line 88
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    invoke-static {v0, p1}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-static {p0, p1}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object p0, v2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 104
    .line 105
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    iget-object p1, v2, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-ne p0, p1, :cond_5

    .line 118
    .line 119
    invoke-static {v2}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    :cond_5
    monitor-exit v1

    .line 123
    return-void

    .line 124
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/didi/drouter/router/Result;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    sget-object v0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/didi/drouter/router/Result;

    .line 16
    .line 17
    return-object p0
.end method

.method public static declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Result;)V
    .locals 8
    .param p0    # Lcom/didi/drouter/router/Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const-class v1, Lcom/didi/drouter/router/ResultAgent;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "primary request \"%s\" complete, router uri \"%s\", all reason %s"

    .line 10
    .line 11
    iget-object v4, p0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 12
    .line 13
    iget-object v4, v4, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 20
    .line 21
    iget-object v5, v5, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v6, p0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 28
    .line 29
    iget-object v6, v6, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const/4 v7, 0x3

    .line 36
    new-array v7, v7, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object v4, v7, v0

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    aput-object v5, v7, v4

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    aput-object v6, v7, v4

    .line 45
    .line 46
    invoke-virtual {v2, v3, v7}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v2, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

    .line 65
    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    invoke-interface {v2, p0}, Lcom/didi/drouter/router/RouterCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Result;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 75
    .line 76
    iget-object v2, v2, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    new-instance v2, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/didi/drouter/router/Result;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lcom/didi/drouter/utils/RouterExecutor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string v2, "Request finish ------------------------------------------------------------"

    .line 95
    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {p0, v2, v0}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 103
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0
.end method

.method public static declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-class v2, Lcom/didi/drouter/router/ResultAgent;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    check-cast v4, Lcom/didi/drouter/router/Result;

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    const-string v5, "timeout"

    .line 17
    .line 18
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v6, "request \"%s\" time out and force-complete"

    .line 29
    .line 30
    new-array v7, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object p0, v7, v0

    .line 33
    .line 34
    invoke-virtual {v5, v6, v7}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object v5, v4, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 41
    .line 42
    iget-object v5, v5, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v5, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v4, v4, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 48
    .line 49
    iget-object v5, v4, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 50
    .line 51
    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lcom/didi/drouter/router/Request;

    .line 56
    .line 57
    invoke-virtual {v4, v5, p1}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "==== request \"%s\" complete, reason \"%s\" ===="

    .line 68
    .line 69
    const/4 v5, 0x2

    .line 70
    new-array v5, v5, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object p0, v5, v0

    .line 73
    .line 74
    aput-object p1, v5, v1

    .line 75
    .line 76
    invoke-virtual {v3, v4, v5}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_1
    monitor-exit v2

    .line 80
    return-void

    .line 81
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Result;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/LifecycleObserver;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/ResultAgent;Lcom/didi/drouter/router/Request;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/LifecycleObserver;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterResult;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-string v0, "not_found"

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const-string v0, "stop_by_interceptor"

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string v0, "stop_by_router_target"

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p2, 0x0

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_0
    const/4 p2, 0x2

    .line 40
    :goto_1
    iget-object v0, p0, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterResult;

    .line 41
    .line 42
    invoke-interface {v0, p1, p2}, Lcom/didi/drouter/router/IRouterResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_3
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1
.end method
