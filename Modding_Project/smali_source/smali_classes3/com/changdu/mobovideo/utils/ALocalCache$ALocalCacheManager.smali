.class Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/changdu/mobovideo/utils/ALocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ALocalCacheManager"
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/utils/ALocalCache;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/utils/ALocalCache;Ljava/io/File;JI)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/utils/ALocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 4
    iput-object p2, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 5
    iput-wide p3, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    iput p5, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p0}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwww()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/changdu/mobovideo/utils/ALocalCache;Ljava/io/File;JILcom/changdu/mobovideo/utils/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;-><init>(Lcom/changdu/mobovideo/utils/ALocalCache;Ljava/io/File;JI)V

    return-void
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;Ljava/io/File;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwww()J
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 19
    .line 20
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v5, v4

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_3

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    move-exception v2

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_4

    .line 92
    .line 93
    iget-object v5, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 94
    .line 95
    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .line 97
    .line 98
    return-wide v2

    .line 99
    :catch_0
    move-exception v2

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    return-wide v2

    .line 102
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 104
    :goto_2
    sget-object v3, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/io/File;

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

.method public final Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

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
    iget v2, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    if-le v0, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwww()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    cmp-long v0, v5, v3

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    .line 26
    neg-long v1, v5

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_4

    .line 40
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iget-object v2, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    :goto_2
    add-long/2addr v5, v0

    .line 56
    iget-wide v7, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 57
    .line 58
    cmp-long v2, v5, v7

    .line 59
    .line 60
    if-lez v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwww()J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    cmp-long v2, v5, v3

    .line 67
    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    .line 73
    neg-long v5, v5

    .line 74
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    .line 81
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :goto_4
    sget-object v0, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

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
    const-string p1, ""

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/io/File;

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
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1;-><init>(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "ALocalCacheThread"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
