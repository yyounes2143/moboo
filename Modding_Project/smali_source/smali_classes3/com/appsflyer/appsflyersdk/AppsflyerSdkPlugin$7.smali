.class Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->runOnUIThread(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

.field final synthetic val$callbackName:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->val$data:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->val$callbackName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->val$status:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->val$data:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    const-string v1, "id"

    .line 20
    .line 21
    iget-object v2, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->val$callbackName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->val$callbackName:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "onDeepLinking"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->val$data:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 39
    .line 40
    const-string v2, "deepLinkStatus"

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getError()Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    const-string v2, "deepLinkError"

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getError()Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget-object v3, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    .line 80
    .line 81
    if-ne v2, v3, :cond_2

    .line 82
    .line 83
    const-string v2, "deepLinkObj"

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getDeepLink()Lcom/appsflyer/deeplink/DeepLink;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DeepLink;->getClickEvent()Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->val$data:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v1, Lorg/json/JSONObject;

    .line 100
    .line 101
    const-string v1, "status"

    .line 102
    .line 103
    iget-object v2, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->val$status:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    const-string v1, "data"

    .line 109
    .line 110
    iget-object v2, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->val$data:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$7;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;)Lio/flutter/plugin/common/MethodChannel;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-string v2, "callListener"

    .line 130
    .line 131
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    return-void
.end method
