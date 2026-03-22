.class public final Lcom/changdu/component/webviewcache/lru/a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/changdu/component/webviewcache/lru/g;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/lru/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/lru/a;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/lru/a;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/changdu/component/webviewcache/lru/a;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/changdu/component/webviewcache/lru/g;->i:Ljava/io/BufferedWriter;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    goto :goto_1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :goto_0
    iget-wide v2, v1, Lcom/changdu/component/webviewcache/lru/g;->h:J

    .line 15
    .line 16
    iget-wide v4, v1, Lcom/changdu/component/webviewcache/lru/g;->f:J

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-lez v2, :cond_1

    .line 21
    .line 22
    iget-object v2, v1, Lcom/changdu/component/webviewcache/lru/g;->j:Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/changdu/component/webviewcache/lru/g;->d(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/changdu/component/webviewcache/lru/a;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/changdu/component/webviewcache/lru/g;->b()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/changdu/component/webviewcache/lru/a;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/changdu/component/webviewcache/lru/g;->e()V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/changdu/component/webviewcache/lru/a;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    iput v2, v1, Lcom/changdu/component/webviewcache/lru/g;->k:I

    .line 65
    .line 66
    :cond_2
    monitor-exit v0

    .line 67
    :goto_1
    const/4 v0, 0x0

    .line 68
    return-object v0

    .line 69
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw v1
.end method
