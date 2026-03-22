.class Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;->Kkkkkkkkkkkkkkkkkkk(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin$2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/sensorsdata/analytics/sensorsanalyticsflutterplugin/SensorsAnalyticsFlutterPlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getDynamicSuperProperties()Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "rid"

    .line 7
    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method
