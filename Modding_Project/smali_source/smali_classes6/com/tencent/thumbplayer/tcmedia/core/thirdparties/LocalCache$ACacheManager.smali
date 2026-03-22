.class public Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACacheManager"
.end annotation


# instance fields
.field private final cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected cacheDir:Ljava/io/File;

.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private final countLimit:I

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:J

.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;


# direct methods
.method private constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;Ljava/io/File;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheDir:Ljava/io/File;

    iput-wide p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->sizeLimit:J

    iput p5, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->countLimit:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->calculateCacheSizeAndCacheCount()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;Ljava/io/File;JILcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache;Ljava/io/File;JI)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->remove(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1500(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;Ljava/io/File;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->calculateSize(Ljava/io/File;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$1700(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->put(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private calculateCacheSizeAndCacheCount()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->getInstance()Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->obtainThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager$1;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private calculateSize(Ljava/io/File;)J
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method private clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheDir:Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_0

    .line 24
    .line 25
    aget-object v3, v0, v2

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private get(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method private newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheDir:Ljava/io/File;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private put(Ljava/io/File;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iget v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->countLimit:I

    .line 10
    .line 11
    if-le v0, v2, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->removeNext()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    .line 19
    neg-long v0, v0

    .line 20
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->calculateSize(Ljava/io/File;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    :goto_1
    add-long/2addr v2, v0

    .line 47
    iget-wide v4, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->sizeLimit:J

    .line 48
    .line 49
    cmp-long v2, v2, v4

    .line 50
    .line 51
    if-lez v2, :cond_1

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->removeNext()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    .line 59
    neg-long v2, v2

    .line 60
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    .line 67
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private removeNext()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-wide v1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 19
    .line 20
    monitor-enter v3

    .line 21
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v5, v4

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Ljava/util/Map$Entry;

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/io/File;

    .line 46
    .line 47
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Ljava/lang/Long;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Ljava/lang/Long;

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v10

    .line 70
    cmp-long v8, v8, v10

    .line 71
    .line 72
    if-gez v8, :cond_1

    .line 73
    .line 74
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/io/File;

    .line 79
    .line 80
    move-object v5, v7

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-nez v4, :cond_4

    .line 84
    .line 85
    return-wide v1

    .line 86
    :cond_4
    invoke-direct {p0, v4}, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->calculateSize(Ljava/io/File;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/thirdparties/LocalCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 97
    .line 98
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_5
    return-wide v0

    .line 102
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw v0
.end method
