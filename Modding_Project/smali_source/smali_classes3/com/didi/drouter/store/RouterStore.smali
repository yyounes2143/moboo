.class public Lcom/didi/drouter/store/RouterStore;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static volatile Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/CountDownLatch;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Lcom/didi/drouter/store/RouterMeta;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/didi/drouter/store/RouterMeta;",
            ">;"
        }
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/CountDownLatch;

    .line 36
    .line 37
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

.method public static declared-synchronized Wwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/drouter/store/ServiceKey<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/didi/drouter/store/RouterStore;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    sget-object v1, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 11
    .line 12
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/Set;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterMeta;

    .line 21
    .line 22
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "unregister \"%s\" with service \"%s\" success"

    .line 33
    .line 34
    iget-object p0, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v3, 0x2

    .line 41
    new-array v3, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    aput-object p0, v3, v4

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    aput-object p1, v3, p0

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_0
    :goto_0
    monitor-exit v0

    .line 57
    return-void
.end method

.method public static declared-synchronized Wwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterKey;Lcom/didi/drouter/router/IRouterHandler;)V
    .locals 13

    .line 1
    const-class v1, Lcom/didi/drouter/store/RouterStore;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    :try_start_0
    sget v0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwww:I

    .line 9
    .line 10
    invoke-static {v0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/didi/drouter/store/RouterMeta;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v0, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v0, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v0, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-object v8, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/Class;

    .line 33
    .line 34
    iget-object v9, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 35
    .line 36
    iget v10, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 37
    .line 38
    iget v11, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 39
    .line 40
    iget-boolean v12, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-virtual/range {v2 .. v12}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/didi/drouter/store/IRouterProxy;[Ljava/lang/Class;[Ljava/lang/String;IIZ)Lcom/didi/drouter/store/RouterMeta;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwww()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    sget-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 55
    .line 56
    const-string v2, "RegexRouter"

    .line 57
    .line 58
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/Map;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v2, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/didi/drouter/store/RouterMeta;

    .line 77
    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/router/IRouterHandler;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-ne v2, p1, :cond_1

    .line 85
    .line 86
    iget-object v2, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 87
    .line 88
    invoke-static {v2}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    move-object p0, v0

    .line 101
    goto :goto_1

    .line 102
    :cond_0
    sget-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 105
    .line 106
    invoke-static {v2}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/didi/drouter/store/RouterMeta;

    .line 115
    .line 116
    if-eqz v2, :cond_1

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/router/IRouterHandler;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-ne v2, p1, :cond_1

    .line 123
    .line 124
    iget-object v2, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 125
    .line 126
    invoke-static {v2}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    .line 136
    :goto_0
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const-string v2, "unregister \"%s\" with handler \"%s\" success"

    .line 141
    .line 142
    iget-object p0, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 143
    .line 144
    invoke-static {p0}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const/4 v3, 0x2

    .line 157
    new-array v3, v3, [Ljava/lang/Object;

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    aput-object p0, v3, v4

    .line 161
    .line 162
    const/4 p0, 0x1

    .line 163
    aput-object p1, v3, p0

    .line 164
    .line 165
    invoke-virtual {v0, v2, v3}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    throw p0

    .line 171
    :cond_1
    :goto_2
    monitor-exit v1

    .line 172
    return-void
.end method

.method public static declared-synchronized Wwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/Object;)Lcom/didi/drouter/store/IRegister;
    .locals 9
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
    const-class v1, Lcom/didi/drouter/store/RouterStore;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-static {}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 13
    .line 14
    .line 15
    sget v0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwww:I

    .line 16
    .line 17
    invoke-static {v0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/didi/drouter/store/RouterMeta;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v5, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v6, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/service/IFeatureMatcher;

    .line 24
    .line 25
    iget v7, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual/range {v2 .. v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;Lcom/didi/drouter/store/IRouterProxy;Ljava/lang/String;Lcom/didi/drouter/service/IFeatureMatcher;II)Lcom/didi/drouter/store/RouterMeta;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwww(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterMeta;

    .line 38
    .line 39
    sget-object v2, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 42
    .line 43
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/util/Set;

    .line 48
    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-direct {v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 61
    .line 62
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    move-object p0, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    new-instance v2, Landroid/util/Pair;

    .line 79
    .line 80
    invoke-direct {v2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 87
    .line 88
    invoke-direct {v2, p0, v0}, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/ref/WeakReference;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Lcom/didi/drouter/utils/RouterExecutor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v2, "register \"%s\" with service \"%s\" success, size:%s"

    .line 99
    .line 100
    iget-object v4, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const/4 v5, 0x3

    .line 115
    new-array v5, v5, [Ljava/lang/Object;

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    aput-object v4, v5, v6

    .line 119
    .line 120
    const/4 v4, 0x1

    .line 121
    aput-object p1, v5, v4

    .line 122
    .line 123
    const/4 v4, 0x2

    .line 124
    aput-object v3, v5, v4

    .line 125
    .line 126
    invoke-virtual {v0, v2, v5}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/didi/drouter/store/RouterRegister;

    .line 130
    .line 131
    invoke-direct {v0, p0, p1}, Lcom/didi/drouter/store/RouterRegister;-><init>(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    monitor-exit v1

    .line 135
    return-object v0

    .line 136
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    const-string p1, "argument null illegal error"

    .line 139
    .line 140
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    throw p0
.end method

.method public static declared-synchronized Wwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterKey;Lcom/didi/drouter/router/IRouterHandler;)Lcom/didi/drouter/store/IRegister;
    .locals 17
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const-class v4, Lcom/didi/drouter/store/RouterStore;

    .line 8
    .line 9
    monitor-enter v4

    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    if-eqz v1, :cond_7

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 15
    .line 16
    .line 17
    sget v5, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwww:I

    .line 18
    .line 19
    invoke-static {v5}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/didi/drouter/store/RouterMeta;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iget-object v5, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    iget-object v5, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 30
    .line 31
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    iget-object v5, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    iget-object v12, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/Class;

    .line 42
    .line 43
    iget-object v13, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 44
    .line 45
    iget v14, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 46
    .line 47
    iget v15, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 48
    .line 49
    iget-boolean v5, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    move/from16 v16, v5

    .line 54
    .line 55
    invoke-virtual/range {v6 .. v16}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/didi/drouter/store/IRouterProxy;[Ljava/lang/Class;[Ljava/lang/String;IIZ)Lcom/didi/drouter/store/RouterMeta;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5, v1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwww(Lcom/didi/drouter/router/IRouterHandler;)V

    .line 60
    .line 61
    .line 62
    iget-object v6, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 63
    .line 64
    invoke-static {v6}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v5}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwww()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    sget-object v7, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 75
    .line 76
    const-string v8, "RegexRouter"

    .line 77
    .line 78
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Ljava/util/Map;

    .line 83
    .line 84
    if-nez v8, :cond_0

    .line 85
    .line 86
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-direct {v8}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v9, "RegexRouter"

    .line 92
    .line 93
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_0
    :goto_0
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    check-cast v7, Lcom/didi/drouter/store/RouterMeta;

    .line 105
    .line 106
    if-eqz v7, :cond_1

    .line 107
    .line 108
    invoke-virtual {v7}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwww()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_3

    .line 113
    .line 114
    :cond_1
    invoke-interface {v8, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    sget-object v7, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 119
    .line 120
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Lcom/didi/drouter/store/RouterMeta;

    .line 125
    .line 126
    if-eqz v8, :cond_4

    .line 127
    .line 128
    invoke-virtual {v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwww()Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_3

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    move v5, v3

    .line 136
    goto :goto_3

    .line 137
    :cond_4
    :goto_1
    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :goto_2
    move v5, v2

    .line 141
    :goto_3
    if-eqz v5, :cond_5

    .line 142
    .line 143
    iget-object v6, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 144
    .line 145
    if-eqz v6, :cond_5

    .line 146
    .line 147
    new-instance v6, Ljava/lang/ref/WeakReference;

    .line 148
    .line 149
    new-instance v7, Landroid/util/Pair;

    .line 150
    .line 151
    invoke-direct {v7, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    new-instance v7, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 158
    .line 159
    invoke-direct {v7, v0, v6}, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/didi/drouter/store/RouterKey;Ljava/lang/ref/WeakReference;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v7}, Lcom/didi/drouter/utils/RouterExecutor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    const-string v7, "register \"%s\" with handler \"%s\" %s"

    .line 170
    .line 171
    xor-int/lit8 v8, v5, 0x1

    .line 172
    .line 173
    iget-object v9, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 174
    .line 175
    invoke-static {v9}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    if-eqz v5, :cond_6

    .line 188
    .line 189
    const-string v5, "success"

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_6
    const-string v5, "fail"

    .line 193
    .line 194
    :goto_4
    const/4 v11, 0x3

    .line 195
    new-array v11, v11, [Ljava/lang/Object;

    .line 196
    .line 197
    aput-object v9, v11, v3

    .line 198
    .line 199
    aput-object v10, v11, v2

    .line 200
    .line 201
    const/4 v2, 0x2

    .line 202
    aput-object v5, v11, v2

    .line 203
    .line 204
    invoke-virtual {v6, v7, v8, v11}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Z[Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    new-instance v2, Lcom/didi/drouter/store/RouterRegister;

    .line 208
    .line 209
    invoke-direct {v2, v0, v1}, Lcom/didi/drouter/store/RouterRegister;-><init>(Lcom/didi/drouter/store/RouterKey;Lcom/didi/drouter/router/IRouterHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .line 211
    .line 212
    monitor-exit v4

    .line 213
    return-object v2

    .line 214
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    const-string v1, "argument null illegal error"

    .line 217
    .line 218
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :goto_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    throw v0
.end method

.method public static varargs Wwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Landroid/util/Pair;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    array-length v2, p1

    .line 4
    move v3, v0

    .line 5
    :goto_0
    if-ge v3, v2, :cond_0

    .line 6
    .line 7
    aget-object v4, p1, v3

    .line 8
    .line 9
    const-string v5, "com.didi.drouter.loader.%s.%sLoader"

    .line 10
    .line 11
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v7, 0x2

    .line 14
    new-array v7, v7, [Ljava/lang/Object;

    .line 15
    .line 16
    aput-object p0, v7, v0

    .line 17
    .line 18
    aput-object v6, v7, v1

    .line 19
    .line 20
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    new-array v6, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {v5, v6}, Lcom/didi/drouter/utils/ReflectUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/didi/drouter/store/MetaLoader;

    .line 35
    .line 36
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v4, Ljava/util/Map;

    .line 39
    .line 40
    invoke-virtual {v5, v4}, Lcom/didi/drouter/store/MetaLoader;->load(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    add-int/2addr v3, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return v1

    .line 46
    :catch_0
    return v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/didi/drouter/loader/host/RouterLoader;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/didi/drouter/loader/host/RouterLoader;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/didi/drouter/loader/host/RouterLoader;->load(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/didi/drouter/loader/host/InterceptorLoader;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/didi/drouter/loader/host/InterceptorLoader;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/didi/drouter/loader/host/InterceptorLoader;->load(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/didi/drouter/loader/host/ServiceLoader;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/didi/drouter/loader/host/ServiceLoader;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/didi/drouter/loader/host/ServiceLoader;->load(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :catch_0
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    const-string v4, "host"

    .line 8
    .line 9
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwww()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sput-boolean v1, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 20
    .line 21
    sget-object v5, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/CountDownLatch;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v4, "Router"

    .line 28
    .line 29
    sget-object v5, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 30
    .line 31
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "Interceptor"

    .line 36
    .line 37
    sget-object v6, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 38
    .line 39
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-string v6, "Service"

    .line 44
    .line 45
    sget-object v7, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 46
    .line 47
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const/4 v7, 0x3

    .line 52
    new-array v7, v7, [Landroid/util/Pair;

    .line 53
    .line 54
    aput-object v4, v7, v0

    .line 55
    .line 56
    aput-object v5, v7, v1

    .line 57
    .line 58
    const/4 v4, 0x2

    .line 59
    aput-object v6, v7, v4

    .line 60
    .line 61
    invoke-static {p0, v7}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Landroid/util/Pair;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    :goto_0
    if-nez v4, :cond_1

    .line 66
    .line 67
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v5, "DRouterTable in app \"%s\" not found, please apply drouter plugin first."

    .line 72
    .line 73
    new-array v6, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object p0, v6, v0

    .line 76
    .line 77
    invoke-virtual {v4, v5, v6}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    sub-long/2addr v4, v2

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v2, v1, v0

    .line 96
    .line 97
    const-string v0, "[===DRouter load complete=== waste time: %sms]"

    .line 98
    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/didi/drouter/store/RouterMeta;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/Set;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/util/Set;
    .locals 4
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Lcom/didi/drouter/store/RouterMeta;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    instance-of v3, v2, Lcom/didi/drouter/store/RouterMeta;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    check-cast v2, Lcom/didi/drouter/store/RouterMeta;

    .line 24
    .line 25
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    const-string v2, "RegexRouter"

    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/didi/drouter/store/RouterMeta;

    .line 57
    .line 58
    invoke-virtual {v2, p0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwww(Landroid/net/Uri;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/didi/drouter/store/RouterMeta;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 5
    .line 6
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    const-class v1, Lcom/didi/drouter/store/RouterStore;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance p1, Lcom/didi/drouter/store/RouterStore$1;

    .line 30
    .line 31
    const-string v0, "drouter-table-thread"

    .line 32
    .line 33
    invoke-direct {p1, v0, p0}, Lcom/didi/drouter/store/RouterStore$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    monitor-exit v1

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0

    .line 43
    :cond_2
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "host"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/ref/WeakReference;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    new-instance v0, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterKey;Ljava/lang/ref/WeakReference;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    new-instance v0, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/ref/WeakReference;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/Pair;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/didi/drouter/store/RouterKey;

    .line 16
    .line 17
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcom/didi/drouter/router/IRouterHandler;

    .line 20
    .line 21
    invoke-static {p1, p0}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterKey;Lcom/didi/drouter/router/IRouterHandler;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/ref/WeakReference;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/Pair;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/didi/drouter/store/ServiceKey;

    .line 16
    .line 17
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {p1, p0}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
