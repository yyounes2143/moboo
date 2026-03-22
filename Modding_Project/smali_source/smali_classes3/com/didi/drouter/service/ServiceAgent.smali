.class Lcom/didi/drouter/service/ServiceAgent;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/drouter/service/ServiceAgent$ServiceComparator;,
        Lcom/didi/drouter/service/ServiceAgent$CallHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/api/Strategy;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/didi/drouter/store/RouterMeta;",
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
    sput-object v0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/didi/drouter/store/RouterMeta;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    sget v2, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwww:I

    .line 42
    .line 43
    if-ne v1, v2, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 52
    .line 53
    new-instance v0, Lcom/didi/drouter/service/ServiceAgent$ServiceComparator;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-direct {v0, v1}, Lcom/didi/drouter/service/ServiceAgent$ServiceComparator;-><init>(Lcom/didi/drouter/service/ServiceAgent$1;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/didi/drouter/service/IFeatureMatcher;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/drouter/service/IFeatureMatcher<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/didi/drouter/service/IFeatureMatcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public final varargs Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterMeta;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwww()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget-object v2, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    sget-object v4, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_1
    if-nez v3, :cond_8

    .line 36
    .line 37
    const-class v4, Lcom/didi/drouter/service/ServiceAgent;

    .line 38
    .line 39
    monitor-enter v4

    .line 40
    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    sget-object v5, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    :goto_0
    if-nez v3, :cond_7

    .line 68
    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    array-length v3, p2

    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/store/IRouterProxy;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/store/IRouterProxy;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v3, v1}, Lcom/didi/drouter/store/IRouterProxy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_3
    if-nez v1, :cond_4

    .line 89
    .line 90
    invoke-static {v0, p2}, Lcom/didi/drouter/utils/ReflectUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    move-object v3, p2

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    move-object v3, v1

    .line 97
    :goto_1
    if-eqz v3, :cond_7

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    const/4 v1, 0x2

    .line 104
    if-ne p2, v1, :cond_5

    .line 105
    .line 106
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    const/4 p2, 0x1

    .line 115
    if-ne p1, p2, :cond_6

    .line 116
    .line 117
    sget-object p1, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 118
    .line 119
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 120
    .line 121
    invoke-direct {p2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_2
    monitor-exit v4

    .line 128
    return-object v3

    .line 129
    :cond_7
    monitor-exit v4

    .line 130
    return-object v3

    .line 131
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p1

    .line 133
    :cond_8
    return-object v3
.end method

.method public varargs Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/api/Strategy;

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    if-eqz v3, :cond_1

    .line 8
    .line 9
    const-class v0, Lcom/didi/drouter/service/IRemoteBridge;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/service/ServiceLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-array v1, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v5, v0

    .line 22
    check-cast v5, Lcom/didi/drouter/service/IRemoteBridge;

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    return-object v4

    .line 27
    :cond_0
    iget-object v6, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/api/Strategy;

    .line 28
    .line 29
    iget-object v7, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 30
    .line 31
    iget-object v8, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 32
    .line 33
    iget-object v9, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v10, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v11, p1

    .line 38
    invoke-interface/range {v5 .. v11}, Lcom/didi/drouter/service/IRemoteBridge;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/api/Strategy;Landroidx/lifecycle/Lifecycle;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_1
    move-object v11, p1

    .line 44
    iget-object p1, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_5

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/didi/drouter/store/RouterMeta;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v3}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/service/IFeatureMatcher;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {p0, v5, v6}, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/didi/drouter/service/IFeatureMatcher;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwww()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v4, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    .line 106
    aput-object v4, v0, v2

    .line 107
    .line 108
    aput-object v5, v0, v1

    .line 109
    .line 110
    const-string v1, "[Local] Get dynamic service \"%s\" with impl \"%s\""

    .line 111
    .line 112
    invoke-virtual {p1, v1, v0}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :cond_3
    invoke-virtual {p0, v3, v11}, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterMeta;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    iget-object p1, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 127
    .line 128
    const-class v4, Lcom/didi/drouter/service/ICallService;

    .line 129
    .line 130
    if-ne p1, v4, :cond_4

    .line 131
    .line 132
    invoke-static {v3}, Lcom/didi/drouter/service/ServiceAgent$CallHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-object v4, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    .line 157
    .line 158
    aput-object v4, v0, v2

    .line 159
    .line 160
    aput-object v5, v0, v1

    .line 161
    .line 162
    const-string v4, "[Local] Get ICallService \"%s\" with impl \"%s\""

    .line 163
    .line 164
    invoke-virtual {p1, v4, v0}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object v0, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 176
    .line 177
    new-array v1, v1, [Ljava/lang/Class;

    .line 178
    .line 179
    aput-object v0, v1, v2

    .line 180
    .line 181
    new-instance v0, Lcom/didi/drouter/service/ServiceAgent$CallHandler;

    .line 182
    .line 183
    invoke-direct {v0, v3}, Lcom/didi/drouter/service/ServiceAgent$CallHandler;-><init>(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    return-object p1

    .line 191
    :cond_4
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    iget-object v4, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    new-array v0, v0, [Ljava/lang/Object;

    .line 210
    .line 211
    aput-object v4, v0, v2

    .line 212
    .line 213
    aput-object v5, v0, v1

    .line 214
    .line 215
    const-string v1, "[Local] Get service \"%s\" with impl \"%s\""

    .line 216
    .line 217
    invoke-virtual {p1, v1, v0}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    return-object v3

    .line 221
    :cond_5
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iget-object v3, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    iget-object v5, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 232
    .line 233
    if-eqz v5, :cond_6

    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    :cond_6
    new-array v0, v0, [Ljava/lang/Object;

    .line 244
    .line 245
    aput-object v3, v0, v2

    .line 246
    .line 247
    aput-object v4, v0, v1

    .line 248
    .line 249
    const-string v1, "[Local] Get service \"%s\" fail with default \"%s\""

    .line 250
    .line 251
    invoke-virtual {p1, v1, v0}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 255
    .line 256
    return-object p1
.end method

.method public varargs Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/didi/drouter/store/RouterMeta;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/service/IFeatureMatcher;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p0, v3, v4}, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/didi/drouter/service/IFeatureMatcher;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwww()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0, v2, p1}, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterMeta;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_1
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-object v0
.end method
