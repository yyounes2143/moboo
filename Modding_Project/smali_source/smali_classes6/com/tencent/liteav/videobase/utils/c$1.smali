.class final Lcom/tencent/liteav/videobase/utils/c$1;
.super Landroid/os/Handler;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videobase/utils/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videobase/utils/c;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/utils/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/c$1;->a:Lcom/tencent/liteav/videobase/utils/c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_4

    .line 5
    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/c$1;->a:Lcom/tencent/liteav/videobase/utils/c;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p1, Lcom/tencent/liteav/videobase/utils/c;->b:Ljava/util/HashMap;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p1, Lcom/tencent/liteav/videobase/utils/c;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gtz v1, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    new-array v2, v1, [Lcom/tencent/liteav/videobase/utils/c$a;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/tencent/liteav/videobase/utils/c;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v3, p1, Lcom/tencent/liteav/videobase/utils/c;->c:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v0, 0x0

    .line 37
    move v3, v0

    .line 38
    :goto_0
    if-ge v3, v1, :cond_0

    .line 39
    .line 40
    aget-object v4, v2, v3

    .line 41
    .line 42
    iget-object v5, v4, Lcom/tencent/liteav/videobase/utils/c$a;->b:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    move v6, v0

    .line 49
    :goto_1
    if-ge v6, v5, :cond_3

    .line 50
    .line 51
    iget-object v7, v4, Lcom/tencent/liteav/videobase/utils/c$a;->b:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Lcom/tencent/liteav/videobase/utils/c$b;

    .line 58
    .line 59
    iget-boolean v8, v7, Lcom/tencent/liteav/videobase/utils/c$b;->d:Z

    .line 60
    .line 61
    if-nez v8, :cond_2

    .line 62
    .line 63
    iget-object v7, v7, Lcom/tencent/liteav/videobase/utils/c$b;->b:Landroid/content/BroadcastReceiver;

    .line 64
    .line 65
    iget-object v8, p1, Lcom/tencent/liteav/videobase/utils/c;->a:Landroid/content/Context;

    .line 66
    .line 67
    iget-object v9, v4, Lcom/tencent/liteav/videobase/utils/c$a;->a:Landroid/content/Intent;

    .line 68
    .line 69
    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p1

    .line 80
    :cond_4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
