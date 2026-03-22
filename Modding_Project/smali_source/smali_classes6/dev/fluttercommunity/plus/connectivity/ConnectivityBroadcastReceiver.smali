.class public Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwww:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final Wwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

.field public Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/EventChannel$EventSink;

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/Connectivity;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldev/fluttercommunity/plus/connectivity/Connectivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    iget-object p0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Ldev/fluttercommunity/plus/connectivity/Connectivity;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ldev/fluttercommunity/plus/connectivity/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ldev/fluttercommunity/plus/connectivity/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    new-instance v0, Ldev/fluttercommunity/plus/connectivity/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldev/fluttercommunity/plus/connectivity/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwww:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Ldev/fluttercommunity/plus/connectivity/Connectivity;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwww:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwww:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_0
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    :cond_1
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 1

    .line 1
    iput-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 p2, 0x18

    .line 6
    .line 7
    if-lt p1, p2, :cond_0

    .line 8
    .line 9
    new-instance p1, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;-><init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwww:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 15
    .line 16
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    .line 17
    .line 18
    invoke-virtual {p1}, Ldev/fluttercommunity/plus/connectivity/Connectivity;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwww:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 23
    .line 24
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/scheduler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 29
    .line 30
    new-instance p2, Landroid/content/IntentFilter;

    .line 31
    .line 32
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 33
    .line 34
    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    .line 9
    .line 10
    invoke-virtual {p2}, Ldev/fluttercommunity/plus/connectivity/Connectivity;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p1, p2}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
