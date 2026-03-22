.class Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwww()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 4
    .line 5
    new-instance v1, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1$1;-><init>(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    move v4, v3

    .line 20
    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    .line 22
    aget-object v5, v0, v2

    .line 23
    .line 24
    int-to-long v6, v3

    .line 25
    iget-object v3, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;

    .line 26
    .line 27
    invoke-static {v3, v5}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;Ljava/io/File;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v8

    .line 31
    add-long/2addr v6, v8

    .line 32
    long-to-int v3, v6

    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    iget-object v6, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;

    .line 36
    .line 37
    invoke-static {v6}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;)Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    int-to-long v1, v3

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/ALocalCache$ALocalCacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_1
    sget-object v1, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method
