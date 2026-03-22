.class final Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->createNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/ConnectivityManager;

.field final synthetic b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->a:Landroid/net/ConnectivityManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "NetworkBinder"

    .line 8
    .line 9
    const-string v1, "[BindSocket]:onAvailable, network is null"

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {p1, v1, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->a:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$000(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$100(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 43
    .line 44
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$102(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;Z)Z

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-static {v2, v3}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$502(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;Z)Z

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$200(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$300(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-static {v4, v5, p1, v3}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$400(JLjava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    const-string v2, "NetworkBinder"

    .line 77
    .line 78
    const-string v3, "[BindSocket]:start network succ, network name="

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-array v0, v0, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v2, p1, v0}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$700(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)V

    .line 96
    .line 97
    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 100
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p1
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$000(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$500(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$100(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$502(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;Z)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$200(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$300(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    const-string v0, ""

    .line 49
    .line 50
    invoke-static {v2, v3, v0, v1}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$400(JLjava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "NetworkBinder"

    .line 54
    .line 55
    const-string v2, "[BindSocket]:network onLost"

    .line 56
    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;->b:Lcom/tencent/liteav/base/networkbinder/NetworkBinder;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->access$600(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)V

    .line 68
    .line 69
    .line 70
    monitor-exit p1

    .line 71
    return-void

    .line 72
    :cond_2
    :goto_1
    monitor-exit p1

    .line 73
    return-void

    .line 74
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw v0
.end method
