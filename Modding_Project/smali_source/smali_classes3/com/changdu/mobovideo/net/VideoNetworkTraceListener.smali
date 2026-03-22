.class public Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;
.super Lokhttp3/EventListener;
.source "Proguard"


# static fields
.field public static final Wwwwwwwwwwwwwwwww:Lokhttp3/EventListener$Factory;

.field public static Wwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final Wwwwwwwwwwwwwwwwwww:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

.field public Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

.field public Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/StringBuilder;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J


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
    sput-object v0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwww:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    new-instance v0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener$1;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener$1;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwww:Lokhttp3/EventListener$Factory;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lokhttp3/HttpUrl;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    iput-wide v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    iput-wide v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 8
    iput-wide v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 9
    new-instance v1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;

    invoke-direct {v1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;-><init>()V

    iput-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;

    .line 10
    iput-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 12
    iput-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/StringBuilder;

    .line 17
    sget-object p1, Lcom/changdu/mobovideo/plugins/CDNetwork;->Companion:Lcom/changdu/mobovideo/plugins/CDNetwork$Companion;

    invoke-virtual {p1}, Lcom/changdu/mobovideo/plugins/CDNetwork$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/changdu/mobovideo/plugins/CDNetwork$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 21
    sget-object p1, Lcom/changdu/mobovideo/plugins/CDNetwork;->Companion:Lcom/changdu/mobovideo/plugins/CDNetwork$Companion;

    invoke-virtual {p1}, Lcom/changdu/mobovideo/plugins/CDNetwork$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/HttpUrl;Lcom/changdu/mobovideo/net/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;-><init>(Lokhttp3/HttpUrl;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized Kkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwww:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->getNetworkEventsMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Www(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Www(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    long-to-double v0, v0

    .line 11
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    div-double/2addr v0, v3

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v0, v1, v3

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    aput-object p1, v1, v0

    .line 29
    .line 30
    const-string p1, "%.3f-%s"

    .line 31
    .line 32
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ";"

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final declared-synchronized Wwww(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwww:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    :try_start_1
    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    throw p1
.end method

.method public final Wwwww()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->generateTraceItemMap(Ljava/lang/Boolean;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwww(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 47
    .line 48
    :cond_1
    const-string v1, "IP"

    .line 49
    .line 50
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-wide v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 56
    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "RequestHeaderLength"

    .line 62
    .line 63
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-wide v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 67
    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "RequestBodyLength"

    .line 73
    .line 74
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-wide v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 78
    .line 79
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "ResponseHeaderLength"

    .line 84
    .line 85
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iget-wide v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 89
    .line 90
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "ResponseBodyLength"

    .line 95
    .line 96
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string v1, "protocol"

    .line 100
    .line 101
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 102
    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "DetailLog"

    .line 121
    .line 122
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    .line 126
    .line 127
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .line 129
    .line 130
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_3

    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Ljava/util/Map$Entry;

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ljava/lang/String;

    .line 155
    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :catch_0
    :cond_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v2, "apiNetworkTrace"

    .line 169
    .line 170
    invoke-virtual {v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public Wwwwww(Lokhttp3/Call;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lokhttp3/EventListener;->Wwwwww(Lokhttp3/Call;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->SECURE_CONNECT_START:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwww(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Handshake;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->Wwwwwww(Lokhttp3/Call;Lokhttp3/Handshake;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->SECURE_CONNECT_END:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwww(Lokhttp3/Call;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lokhttp3/EventListener;->Wwwwwwwww(Lokhttp3/Call;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->RESPONSE_HEADERS_START:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwwww(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->Wwwwwwwwww(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->RESPONSE_HEADERS_END:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkk()Lokhttp3/Headers;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lokhttp3/Headers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 27
    .line 28
    invoke-virtual {p2}, Lokhttp3/Response;->Kkkkkkkkkk()Lokhttp3/Protocol;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method

.method public Wwwwwwwwwwww(Lokhttp3/Call;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lokhttp3/EventListener;->Wwwwwwwwwwww(Lokhttp3/Call;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->RESPONSE_BODY_START:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwwwwwww(Lokhttp3/Call;J)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->Wwwwwwwwwwwww(Lokhttp3/Call;J)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->RESPONSE_BODY_END:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-wide p2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 19
    .line 20
    return-void
.end method

.method public Wwwwwwwwwwwwww(Lokhttp3/Call;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lokhttp3/EventListener;->Wwwwwwwwwwwwww(Lokhttp3/Call;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->REQUEST_HEADERS_START:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwwwwwwwww(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwww(Lokhttp3/Call;Lokhttp3/Request;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->REQUEST_HEADERS_END:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lokhttp3/Headers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    iput-wide p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 27
    .line 28
    return-void
.end method

.method public Wwwwwwwwwwwwwwwww(Lokhttp3/Call;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwww(Lokhttp3/Call;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->REQUEST_BODY_START:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwww(Lokhttp3/Call;J)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwww(Lokhttp3/Call;J)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->REQUEST_BODY_END:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-wide p2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 19
    .line 20
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->DNS_START:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p2, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->DNS_END:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-lez p2, :cond_1

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/net/InetAddress;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {p1}, Lokhttp3/Call;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CONNECTION_RELEASED:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Connection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CONNECTION_ACQUIRED:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/net/Proxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CONNECT_START:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/net/Proxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokhttp3/Protocol;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super/range {p0 .. p5}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    iget-object p2, p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object p2, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CONNECT_END:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/net/Proxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokhttp3/Protocol;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CONNECT_END:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 30
    .line 31
    invoke-interface {p1}, Lokhttp3/Call;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "GET"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->setId(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;

    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->setTimestamp(J)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->setUrl(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CALL_START:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/net/VideoNetworkTraceModel;->CALL_END:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;->Wwwww()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
