.class Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicReceiver"
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;)Lio/flutter/plugin/common/MethodChannel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const-string p1, "visualizedChanged"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "visualizedConnectionStatusChanged"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x0

    .line 33
    const-string v3, "SA.FlutterVisual"

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {v3, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;)Lio/flutter/plugin/common/MethodChannel;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "visualizedPropertiesConfigChanged"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-static {v3, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual$DynamicReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;)Lio/flutter/plugin/common/MethodChannel;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, p2, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method
