.class Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->calculateCacheSizeAndCacheCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;


# direct methods
.method public constructor <init>(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager$1;->this$1:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

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
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager$1;->this$1:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->cacheDir:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    aget-object v5, v0, v2

    .line 18
    .line 19
    int-to-long v6, v3

    .line 20
    iget-object v3, p0, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager$1;->this$1:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 21
    .line 22
    invoke-static {v3, v5}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/io/File;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v8

    .line 26
    add-long/2addr v6, v8

    .line 27
    long-to-int v3, v6

    .line 28
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    iget-object v6, p0, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager$1;->this$1:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 31
    .line 32
    invoke-static {v6}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager$1;->this$1:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    int-to-long v1, v3

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager$1;->this$1:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method
