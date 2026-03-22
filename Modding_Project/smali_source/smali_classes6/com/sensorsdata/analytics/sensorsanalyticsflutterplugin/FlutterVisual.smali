.class public Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;
    }
.end annotation


# static fields
.field public static volatile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;


# instance fields
.field public volatile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    new-instance v0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;-><init>(Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;

    .line 13
    .line 14
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;
    .locals 2

    .line 1
    sget-object v0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 27
    .line 28
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "SA.FlutterVisual"

    .line 3
    .line 4
    const-string v1, "unRegisterBroadcast"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "SA.FlutterVisual"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "registerBroadcast:"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    :try_start_1
    const-string v0, "SA.FlutterVisual"

    .line 31
    .line 32
    const-string v1, "registerBroadcast"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "android.intent.action.FLUTTER_VISUALIZED"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    :try_start_2
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    throw p1
.end method
