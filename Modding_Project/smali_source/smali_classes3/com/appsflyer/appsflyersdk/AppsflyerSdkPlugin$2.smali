.class Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/appsflyer/AppsFlyerConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;


# direct methods
.method public constructor <init>(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAppOpenAttribution(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lorg/json/JSONObject;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 26
    .line 27
    invoke-static {v1, p1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;Ljava/util/Map;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 35
    .line 36
    const-string v1, "onAppOpenAttribution"

    .line 37
    .line 38
    const-string v2, "success"

    .line 39
    .line 40
    invoke-static {p1, v0, v1, v2}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onAttributionFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 24
    .line 25
    const-string v1, "failure"

    .line 26
    .line 27
    invoke-static {v0, p1, v1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 32
    .line 33
    const-string v2, "onAppOpenAttribution"

    .line 34
    .line 35
    invoke-static {v0, p1, v2, v1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public onConversionDataFail(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 24
    .line 25
    const-string v1, "failure"

    .line 26
    .line 27
    invoke-static {v0, p1, v1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 32
    .line 33
    const-string v2, "onInstallConversionData"

    .line 34
    .line 35
    invoke-static {v0, p1, v2, v1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public onConversionDataSuccess(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwww(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lorg/json/JSONObject;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 26
    .line 27
    invoke-static {v1, p1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;Ljava/util/Map;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$2;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 35
    .line 36
    const-string v1, "onInstallConversionData"

    .line 37
    .line 38
    const-string v2, "success"

    .line 39
    .line 40
    invoke-static {p1, v0, v1, v2}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
