.class public Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Kkkkkkkkk(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->unregisterSuperProperty(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Kkkkkkkkkk(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->unbind(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final Kkkkkkkkkkk(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/Map;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final Kkkkkkkkkkkk(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimerStart(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final Kkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimerResume(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Kkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimerPause(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Kkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/Map;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimerEnd(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/Map;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAppInstall(Lorg/json/JSONObject;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "$referrer"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/Map;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const-string v2, "$AppPageLeave"

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getLastScreenUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkk(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "serverUrl"

    .line 9
    .line 10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-direct {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "autotrackTypes"

    .line 32
    .line 33
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string v1, "networkTypes"

    .line 49
    .line 50
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    check-cast v1, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setNetworkTypePolicy(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 63
    .line 64
    .line 65
    :cond_2
    const-string v1, "flushInterval"

    .line 66
    .line 67
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setFlushInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 80
    .line 81
    .line 82
    :cond_3
    const-string v1, "flushBulkSize"

    .line 83
    .line 84
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    check-cast v1, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setFlushBulkSize(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 97
    .line 98
    .line 99
    :cond_4
    const-string v1, "enableLog"

    .line 100
    .line 101
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    check-cast v1, Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableLog(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 114
    .line 115
    .line 116
    :cond_5
    const-string v1, "encrypt"

    .line 117
    .line 118
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_6

    .line 123
    .line 124
    check-cast v1, Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableEncrypt(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 131
    .line 132
    .line 133
    :cond_6
    const-string v1, "heatMap"

    .line 134
    .line 135
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    check-cast v1, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableHeatMap(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 148
    .line 149
    .line 150
    :cond_7
    const-string v1, "android"

    .line 151
    .line 152
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-eqz v1, :cond_a

    .line 157
    .line 158
    check-cast v1, Ljava/util/Map;

    .line 159
    .line 160
    const-string v3, "maxCacheSize"

    .line 161
    .line 162
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-eqz v3, :cond_8

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v3

    .line 176
    invoke-virtual {v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setMaxCacheSize(J)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 177
    .line 178
    .line 179
    :cond_8
    const-string v3, "jellybean"

    .line 180
    .line 181
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    if-eqz v3, :cond_9

    .line 186
    .line 187
    check-cast v3, Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    :cond_9
    const-string v3, "subProcessFlush"

    .line 194
    .line 195
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-eqz v1, :cond_a

    .line 200
    .line 201
    check-cast v1, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_a

    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableSubProcessFlushData()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 210
    .line 211
    .line 212
    :cond_a
    const-string v1, "javaScriptBridge"

    .line 213
    .line 214
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-eqz v1, :cond_b

    .line 219
    .line 220
    check-cast v1, Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_b

    .line 227
    .line 228
    invoke-virtual {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableJavaScriptBridge(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 229
    .line 230
    .line 231
    :cond_b
    const-string v0, "visualized"

    .line 232
    .line 233
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_d

    .line 238
    .line 239
    check-cast v0, Ljava/util/Map;

    .line 240
    .line 241
    const-string v1, "autoTrack"

    .line 242
    .line 243
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    if-eqz v1, :cond_c

    .line 248
    .line 249
    check-cast v1, Ljava/lang/Boolean;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableVisualizedAutoTrack(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 256
    .line 257
    .line 258
    :cond_c
    const-string v1, "properties"

    .line 259
    .line 260
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_d

    .line 265
    .line 266
    check-cast v0, Ljava/lang/Boolean;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-virtual {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableVisualizedProperties(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 273
    .line 274
    .line 275
    :cond_d
    const-string v0, "globalProperties"

    .line 276
    .line 277
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    check-cast p1, Ljava/util/Map;

    .line 282
    .line 283
    if-eqz p1, :cond_e

    .line 284
    .line 285
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-lez v0, :cond_e

    .line 290
    .line 291
    new-instance v0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin$1;

    .line 292
    .line 293
    invoke-direct {v0, p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin$1;-><init>(Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;Ljava/util/Map;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->registerPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 297
    .line 298
    .line 299
    :cond_e
    iget-object p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 300
    .line 301
    invoke-static {p1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->startWithConfigOptions(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V

    .line 302
    .line 303
    .line 304
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    new-instance v0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin$2;

    .line 309
    .line 310
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin$2;-><init>(Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->registerDynamicSuperProperties(Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :goto_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 318
    .line 319
    .line 320
    :goto_2
    const/4 p1, 0x0

    .line 321
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setServerUrl(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setFlushNetworkPolicy(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setFlushInterval(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setFlushBulkSize(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->removeTimer(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->registerSuperProperties(Lorg/json/JSONObject;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileUnsetPushId(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Www(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileUnset(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Wwww(Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileSetOnce(Lorg/json/JSONObject;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final Wwwww(Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileSet(Lorg/json/JSONObject;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final Wwwwww(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profilePushId(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final Wwwwwww(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileIncrement(Ljava/lang/String;Ljava/lang/Number;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final Wwwwwwww()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileDelete()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwww(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/util/HashSet;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileAppend(Ljava/lang/String;Ljava/util/Set;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final Wwwwwwwwww()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->logout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwww(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->loginWithKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final Wwwwwwwwwwww(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/Map;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->login(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final Wwwwwwwwwwwww(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, v1, v2, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->itemSet(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final Wwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->itemDelete(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final Wwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final Wwwwwwwwwwwwwwww(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->identify(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSuperProperties()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    instance-of v5, v4, Lorg/json/JSONArray;

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    move-object v5, v4

    .line 41
    check-cast v5, Lorg/json/JSONArray;

    .line 42
    .line 43
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    new-instance v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ge v6, v7, :cond_0

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    const/4 v0, 0x0

    .line 84
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getPresetProperties()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getLoginId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getFlushInterval()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getFlushBulkSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getLoginId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getAnonymousId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getAnonymousId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->enableNetworkRequest(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->enableLog(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->deleteAll()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->clearTrackTimer()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->clearSuperProperties()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    .line 5
    check-cast p1, Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    const-string p1, "SA.SensorsAnalyticsFlutterPlugin"

    .line 12
    .line 13
    const-string v0, "\u4f20\u5165\u7684\u5c5e\u6027\u4e3a\u7a7a"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string p1, "SA.SensorsAnalyticsFlutterPlugin"

    .line 10
    .line 11
    const-string v0, "\u4f20\u5165\u7684\u5c5e\u6027\u4e3a\u7a7a"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "SA.SensorsAnalyticsFlutterPlugin"

    .line 8
    .line 9
    const-string v1, "\u4e8b\u4ef6\u540d\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5\u4ee3\u7801"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object p1
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 6
    .line 7
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "sensors_analytics_flutter_plugin"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/FlutterVisual;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Ljava/util/List;

    .line 6
    .line 7
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    const-string v4, "sendVisualizedMessage"

    .line 14
    .line 15
    sparse-switch v3, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :sswitch_0
    :try_start_1
    const-string v3, "itemSet"

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/16 p1, 0x13

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :sswitch_1
    const-string v3, "getSuperProperties"

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    const/16 p1, 0x11

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :sswitch_2
    const-string v3, "getPresetProperties"

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    const/4 p1, 0x4

    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :sswitch_3
    const-string v3, "itemDelete"

    .line 59
    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    const/16 p1, 0x14

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :sswitch_4
    const-string v3, "enableNetworkRequest"

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    const/16 p1, 0x12

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :sswitch_5
    const-string v3, "profileUnsetPushId"

    .line 83
    .line 84
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    .line 90
    const/16 p1, 0x2c

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :sswitch_6
    const-string v3, "getLoginId"

    .line 95
    .line 96
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_0

    .line 101
    .line 102
    const/16 p1, 0xc

    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :sswitch_7
    const-string v3, "setFlushBulkSize"

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    .line 114
    const/16 p1, 0xa

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :sswitch_8
    const-string v3, "setServerUrl"

    .line 119
    .line 120
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_0

    .line 125
    .line 126
    const/4 p1, 0x3

    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :sswitch_9
    const-string v3, "profileUnset"

    .line 130
    .line 131
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_0

    .line 136
    .line 137
    const/16 p1, 0x26

    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :sswitch_a
    const-string v3, "profileSetOnce"

    .line 142
    .line 143
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_0

    .line 148
    .line 149
    const/16 p1, 0x22

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :sswitch_b
    const-string v3, "loginWithKey"

    .line 154
    .line 155
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_0

    .line 160
    .line 161
    const/16 p1, 0x30

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :sswitch_c
    const-string v3, "isAutoTrackEventTypeIgnored"

    .line 166
    .line 167
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_0

    .line 172
    .line 173
    const/16 p1, 0x31

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :sswitch_d
    const-string v3, "registerSuperProperties"

    .line 178
    .line 179
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_0

    .line 184
    .line 185
    const/16 p1, 0x23

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :sswitch_e
    const-string v3, "clearSuperProperties"

    .line 190
    .line 191
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_0

    .line 196
    .line 197
    const/16 p1, 0x25

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :sswitch_f
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_0

    .line 206
    .line 207
    move p1, v0

    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :sswitch_10
    const-string v3, "getFlushInterval"

    .line 211
    .line 212
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_0

    .line 217
    .line 218
    const/16 p1, 0x8

    .line 219
    .line 220
    goto/16 :goto_1

    .line 221
    .line 222
    :sswitch_11
    const-string v3, "setFlushNetworkPolicy"

    .line 223
    .line 224
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_0

    .line 229
    .line 230
    const/4 p1, 0x6

    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :sswitch_12
    const-string v3, "profileIncrement"

    .line 234
    .line 235
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_0

    .line 240
    .line 241
    const/16 p1, 0x27

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :sswitch_13
    const-string v3, "clearTrackTimer"

    .line 246
    .line 247
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-eqz p1, :cond_0

    .line 252
    .line 253
    const/16 p1, 0x1d

    .line 254
    .line 255
    goto/16 :goto_1

    .line 256
    .line 257
    :sswitch_14
    const-string v3, "trackAppInstall"

    .line 258
    .line 259
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-eqz p1, :cond_0

    .line 264
    .line 265
    const/16 p1, 0xe

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :sswitch_15
    const-string v3, "track"

    .line 270
    .line 271
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-eqz p1, :cond_0

    .line 276
    .line 277
    const/16 p1, 0x16

    .line 278
    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :sswitch_16
    const-string v3, "login"

    .line 282
    .line 283
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-eqz p1, :cond_0

    .line 288
    .line 289
    const/16 p1, 0x1e

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :sswitch_17
    const-string v3, "flush"

    .line 294
    .line 295
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-eqz p1, :cond_0

    .line 300
    .line 301
    const/16 p1, 0xf

    .line 302
    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :sswitch_18
    const-string v3, "init"

    .line 306
    .line 307
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-eqz p1, :cond_0

    .line 312
    .line 313
    const/16 p1, 0x2d

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :sswitch_19
    const-string v3, "bind"

    .line 318
    .line 319
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-eqz p1, :cond_0

    .line 324
    .line 325
    const/16 p1, 0x2e

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :sswitch_1a
    const-string v3, "identify"

    .line 330
    .line 331
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_0

    .line 336
    .line 337
    const/16 p1, 0xd

    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :sswitch_1b
    const-string v3, "removeTimer"

    .line 342
    .line 343
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-eqz p1, :cond_0

    .line 348
    .line 349
    const/16 p1, 0x1b

    .line 350
    .line 351
    goto/16 :goto_1

    .line 352
    .line 353
    :sswitch_1c
    const-string v3, "getVisualizedConnectionStatus"

    .line 354
    .line 355
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-eqz p1, :cond_0

    .line 360
    .line 361
    move p1, v1

    .line 362
    goto/16 :goto_1

    .line 363
    .line 364
    :sswitch_1d
    const-string v3, "deleteAll"

    .line 365
    .line 366
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    if-eqz p1, :cond_0

    .line 371
    .line 372
    const/16 p1, 0x10

    .line 373
    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :sswitch_1e
    const-string v3, "getAnonymousId"

    .line 377
    .line 378
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_0

    .line 383
    .line 384
    const/16 p1, 0xb

    .line 385
    .line 386
    goto/16 :goto_1

    .line 387
    .line 388
    :sswitch_1f
    const-string v3, "trackViewScreen"

    .line 389
    .line 390
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    if-eqz p1, :cond_0

    .line 395
    .line 396
    const/16 p1, 0x20

    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :sswitch_20
    const-string v3, "trackTimerEnd"

    .line 401
    .line 402
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    if-eqz p1, :cond_0

    .line 407
    .line 408
    const/16 p1, 0x1c

    .line 409
    .line 410
    goto/16 :goto_1

    .line 411
    .line 412
    :sswitch_21
    const-string v3, "enableLog"

    .line 413
    .line 414
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    if-eqz p1, :cond_0

    .line 419
    .line 420
    const/4 p1, 0x5

    .line 421
    goto/16 :goto_1

    .line 422
    .line 423
    :sswitch_22
    const-string v3, "unbind"

    .line 424
    .line 425
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    if-eqz p1, :cond_0

    .line 430
    .line 431
    const/16 p1, 0x2f

    .line 432
    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :sswitch_23
    const-string v3, "getVisualizedPropertiesConfig"

    .line 436
    .line 437
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    if-eqz p1, :cond_0

    .line 442
    .line 443
    const/4 p1, 0x2

    .line 444
    goto/16 :goto_1

    .line 445
    .line 446
    :sswitch_24
    const-string v3, "isNetworkRequestEnable"

    .line 447
    .line 448
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    if-eqz p1, :cond_0

    .line 453
    .line 454
    const/16 p1, 0x15

    .line 455
    .line 456
    goto/16 :goto_1

    .line 457
    .line 458
    :sswitch_25
    const-string v3, "setFlushInterval"

    .line 459
    .line 460
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result p1

    .line 464
    if-eqz p1, :cond_0

    .line 465
    .line 466
    const/4 p1, 0x7

    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :sswitch_26
    const-string v3, "logout"

    .line 470
    .line 471
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    if-eqz p1, :cond_0

    .line 476
    .line 477
    const/16 p1, 0x1f

    .line 478
    .line 479
    goto/16 :goto_1

    .line 480
    .line 481
    :sswitch_27
    const-string v3, "profileSet"

    .line 482
    .line 483
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result p1

    .line 487
    if-eqz p1, :cond_0

    .line 488
    .line 489
    const/16 p1, 0x21

    .line 490
    .line 491
    goto/16 :goto_1

    .line 492
    .line 493
    :sswitch_28
    const-string v3, "getFlushBulkSize"

    .line 494
    .line 495
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result p1

    .line 499
    if-eqz p1, :cond_0

    .line 500
    .line 501
    const/16 p1, 0x9

    .line 502
    .line 503
    goto/16 :goto_1

    .line 504
    .line 505
    :sswitch_29
    const-string v3, "unregisterSuperProperty"

    .line 506
    .line 507
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result p1

    .line 511
    if-eqz p1, :cond_0

    .line 512
    .line 513
    const/16 p1, 0x24

    .line 514
    .line 515
    goto :goto_1

    .line 516
    :sswitch_2a
    const-string v3, "profilePushId"

    .line 517
    .line 518
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    if-eqz p1, :cond_0

    .line 523
    .line 524
    const/16 p1, 0x2b

    .line 525
    .line 526
    goto :goto_1

    .line 527
    :sswitch_2b
    const-string v3, "trackTimerStart"

    .line 528
    .line 529
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result p1

    .line 533
    if-eqz p1, :cond_0

    .line 534
    .line 535
    const/16 p1, 0x18

    .line 536
    .line 537
    goto :goto_1

    .line 538
    :sswitch_2c
    const-string v3, "trackTimerPause"

    .line 539
    .line 540
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    if-eqz p1, :cond_0

    .line 545
    .line 546
    const/16 p1, 0x19

    .line 547
    .line 548
    goto :goto_1

    .line 549
    :sswitch_2d
    const-string v3, "profileDelete"

    .line 550
    .line 551
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result p1

    .line 555
    if-eqz p1, :cond_0

    .line 556
    .line 557
    const/16 p1, 0x29

    .line 558
    .line 559
    goto :goto_1

    .line 560
    :sswitch_2e
    const-string v3, "profileAppend"

    .line 561
    .line 562
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result p1

    .line 566
    if-eqz p1, :cond_0

    .line 567
    .line 568
    const/16 p1, 0x28

    .line 569
    .line 570
    goto :goto_1

    .line 571
    :sswitch_2f
    const-string v3, "trackInstallation"

    .line 572
    .line 573
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result p1

    .line 577
    if-eqz p1, :cond_0

    .line 578
    .line 579
    const/16 p1, 0x17

    .line 580
    .line 581
    goto :goto_1

    .line 582
    :sswitch_30
    const-string v3, "trackTimerResume"

    .line 583
    .line 584
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result p1

    .line 588
    if-eqz p1, :cond_0

    .line 589
    .line 590
    const/16 p1, 0x1a

    .line 591
    .line 592
    goto :goto_1

    .line 593
    :sswitch_31
    const-string v3, "getDistinctId"

    .line 594
    .line 595
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    if-eqz p1, :cond_0

    .line 600
    .line 601
    const/16 p1, 0x2a

    .line 602
    .line 603
    goto :goto_1

    .line 604
    :cond_0
    :goto_0
    const/4 p1, -0x1

    .line 605
    :goto_1
    const-string v3, "sensors_analytics_module_visual"

    .line 606
    .line 607
    packed-switch p1, :pswitch_data_0

    .line 608
    .line 609
    .line 610
    :try_start_2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 611
    .line 612
    .line 613
    return-void

    .line 614
    :pswitch_0
    invoke-virtual {p0, v2, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwww(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 615
    .line 616
    .line 617
    return-void

    .line 618
    :pswitch_1
    invoke-virtual {p0, v2, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwww(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    :pswitch_2
    invoke-virtual {p0, v2, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkk(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 623
    .line 624
    .line 625
    return-void

    .line 626
    :pswitch_3
    invoke-virtual {p0, v2, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 627
    .line 628
    .line 629
    return-void

    .line 630
    :pswitch_4
    invoke-virtual {p0, v2, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkkkk(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 631
    .line 632
    .line 633
    return-void

    .line 634
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 635
    .line 636
    .line 637
    return-void

    .line 638
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwww(Ljava/util/List;)V

    .line 639
    .line 640
    .line 641
    return-void

    .line 642
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 643
    .line 644
    .line 645
    return-void

    .line 646
    :pswitch_8
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwww()V

    .line 647
    .line 648
    .line 649
    return-void

    .line 650
    :pswitch_9
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwww(Ljava/util/List;)V

    .line 651
    .line 652
    .line 653
    return-void

    .line 654
    :pswitch_a
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwww(Ljava/util/List;)V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :pswitch_b
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Www(Ljava/util/List;)V

    .line 659
    .line 660
    .line 661
    return-void

    .line 662
    :pswitch_c
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 663
    .line 664
    .line 665
    return-void

    .line 666
    :pswitch_d
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkk(Ljava/util/List;)V

    .line 667
    .line 668
    .line 669
    return-void

    .line 670
    :pswitch_e
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 671
    .line 672
    .line 673
    return-void

    .line 674
    :pswitch_f
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwww(Ljava/util/List;)V

    .line 675
    .line 676
    .line 677
    return-void

    .line 678
    :pswitch_10
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwww(Ljava/util/List;)V

    .line 679
    .line 680
    .line 681
    return-void

    .line 682
    :pswitch_11
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkk(Ljava/util/List;)V

    .line 683
    .line 684
    .line 685
    return-void

    .line 686
    :pswitch_12
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwww()V

    .line 687
    .line 688
    .line 689
    return-void

    .line 690
    :pswitch_13
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwww(Ljava/util/List;)V

    .line 691
    .line 692
    .line 693
    return-void

    .line 694
    :pswitch_14
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 695
    .line 696
    .line 697
    return-void

    .line 698
    :pswitch_15
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 699
    .line 700
    .line 701
    return-void

    .line 702
    :pswitch_16
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 703
    .line 704
    .line 705
    return-void

    .line 706
    :pswitch_17
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkk(Ljava/util/List;)V

    .line 707
    .line 708
    .line 709
    return-void

    .line 710
    :pswitch_18
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 711
    .line 712
    .line 713
    return-void

    .line 714
    :pswitch_19
    invoke-virtual {p0, v2, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkk(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 715
    .line 716
    .line 717
    return-void

    .line 718
    :pswitch_1a
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 719
    .line 720
    .line 721
    return-void

    .line 722
    :pswitch_1b
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 723
    .line 724
    .line 725
    return-void

    .line 726
    :pswitch_1c
    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 727
    .line 728
    .line 729
    return-void

    .line 730
    :pswitch_1d
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwww(Ljava/util/List;)V

    .line 731
    .line 732
    .line 733
    return-void

    .line 734
    :pswitch_1e
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwww(Ljava/util/List;)V

    .line 735
    .line 736
    .line 737
    return-void

    .line 738
    :pswitch_1f
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 739
    .line 740
    .line 741
    return-void

    .line 742
    :pswitch_20
    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 743
    .line 744
    .line 745
    return-void

    .line 746
    :pswitch_21
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 747
    .line 748
    .line 749
    return-void

    .line 750
    :pswitch_22
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 751
    .line 752
    .line 753
    return-void

    .line 754
    :pswitch_23
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 755
    .line 756
    .line 757
    return-void

    .line 758
    :pswitch_24
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 759
    .line 760
    .line 761
    return-void

    .line 762
    :pswitch_25
    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 763
    .line 764
    .line 765
    return-void

    .line 766
    :pswitch_26
    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 767
    .line 768
    .line 769
    return-void

    .line 770
    :pswitch_27
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 771
    .line 772
    .line 773
    return-void

    .line 774
    :pswitch_28
    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 775
    .line 776
    .line 777
    return-void

    .line 778
    :pswitch_29
    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 779
    .line 780
    .line 781
    return-void

    .line 782
    :pswitch_2a
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 783
    .line 784
    .line 785
    return-void

    .line 786
    :pswitch_2b
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 787
    .line 788
    .line 789
    return-void

    .line 790
    :pswitch_2c
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 791
    .line 792
    .line 793
    return-void

    .line 794
    :pswitch_2d
    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 795
    .line 796
    .line 797
    return-void

    .line 798
    :pswitch_2e
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkkkkk(Ljava/util/List;)V

    .line 799
    .line 800
    .line 801
    return-void

    .line 802
    :pswitch_2f
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    .line 803
    .line 804
    .line 805
    move-result-object p1

    .line 806
    const-string v0, "flutterGetAppVisualConfig"

    .line 807
    .line 808
    new-array v1, v1, [Ljava/lang/Object;

    .line 809
    .line 810
    invoke-virtual {p1, v3, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object p1

    .line 814
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    return-void

    .line 818
    :pswitch_30
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object p1

    .line 822
    check-cast p1, Ljava/lang/String;

    .line 823
    .line 824
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    new-array v0, v0, [Ljava/lang/Object;

    .line 829
    .line 830
    aput-object p1, v0, v1

    .line 831
    .line 832
    invoke-virtual {v2, v3, v4, v0}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    const/4 p1, 0x0

    .line 836
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    return-void

    .line 840
    :pswitch_31
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    .line 841
    .line 842
    .line 843
    move-result-object p1

    .line 844
    const-string v0, "getVisualState"

    .line 845
    .line 846
    new-array v1, v1, [Ljava/lang/Object;

    .line 847
    .line 848
    invoke-virtual {p1, v3, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object p1

    .line 852
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 853
    .line 854
    .line 855
    return-void

    .line 856
    :goto_2
    const-string p2, "SA.SensorsAnalyticsFlutterPlugin"

    .line 857
    .line 858
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object p1

    .line 862
    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    return-void

    .line 866
    nop

    .line 867
    :sswitch_data_0
    .sparse-switch
        -0x7919ded3 -> :sswitch_31
        -0x72e00279 -> :sswitch_30
        -0x672df4db -> :sswitch_2f
        -0x5df55ddd -> :sswitch_2e
        -0x5973a74c -> :sswitch_2d
        -0x45e322a4 -> :sswitch_2c
        -0x45b08438 -> :sswitch_2b
        -0x4414d322 -> :sswitch_2a
        -0x43f39c6c -> :sswitch_29
        -0x428c1c5f -> :sswitch_28
        -0x41b91207 -> :sswitch_27
        -0x4167ea76 -> :sswitch_26
        -0x3d789d59 -> :sswitch_25
        -0x3d2a0a52 -> :sswitch_24
        -0x39d1ccc5 -> :sswitch_23
        -0x321cc1aa -> :sswitch_22
        -0x25a68d3f -> :sswitch_21
        -0x1bc71e3f -> :sswitch_20
        -0x17fc7ce4 -> :sswitch_1f
        -0x1660a2ce -> :sswitch_1e
        -0x1561e80a -> :sswitch_1d
        -0x123bbaaa -> :sswitch_1c
        -0x121f2edf -> :sswitch_1b
        -0x81790f4 -> :sswitch_1a
        0x2e243d -> :sswitch_19
        0x316510 -> :sswitch_18
        0x5d03b04 -> :sswitch_17
        0x625ef69 -> :sswitch_16
        0x697f14b -> :sswitch_15
        0x101fb7e5 -> :sswitch_14
        0x169912e7 -> :sswitch_13
        0x2bcfefc6 -> :sswitch_12
        0x2d6cf05e -> :sswitch_11
        0x2fb0fc33 -> :sswitch_10
        0x3412066f -> :sswitch_f
        0x34b7f901 -> :sswitch_e
        0x37c309eb -> :sswitch_d
        0x3b7f7c30 -> :sswitch_c
        0x3e78a810 -> :sswitch_b
        0x44e2dc1a -> :sswitch_a
        0x4863a300 -> :sswitch_9
        0x4ffc64ea -> :sswitch_8
        0x504a4a15 -> :sswitch_7
        0x5234fe2e -> :sswitch_6
        0x5907a8f5 -> :sswitch_5
        0x5b8190e4 -> :sswitch_4
        0x5ccb129e -> :sswitch_3
        0x5d11e8e8 -> :sswitch_2
        0x6c2fccd8 -> :sswitch_1
        0x7e228c4f -> :sswitch_0
    .end sparse-switch

    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 6
    .line 7
    return-void
.end method
