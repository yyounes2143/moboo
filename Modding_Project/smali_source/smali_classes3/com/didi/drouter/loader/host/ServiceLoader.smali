.class public Lcom/didi/drouter/loader/host/ServiceLoader;
.super Lcom/didi/drouter/store/MetaLoader;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/didi/drouter/store/MetaLoader;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public load(Ljava/util/Map;)V
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1
    sget v0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwww:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/didi/drouter/store/RouterMeta;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v3, Lcom/didi/drouter/proxy/com_changdu_component_deeplink_facebook_FaceBookDeepLinkCheck;

    .line 8
    .line 9
    invoke-direct {v3}, Lcom/didi/drouter/proxy/com_changdu_component_deeplink_facebook_FaceBookDeepLinkCheck;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x2

    .line 14
    const-class v2, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;

    .line 15
    .line 16
    const-string v4, ""

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;Lcom/didi/drouter/store/IRouterProxy;Ljava/lang/String;Lcom/didi/drouter/service/IFeatureMatcher;II)Lcom/didi/drouter/store/RouterMeta;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Lcom/changdu/component/deeplink/base/DeepLinkBase;

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0, p1}, Lcom/didi/drouter/store/MetaLoader;->put(Ljava/lang/Class;Lcom/didi/drouter/store/RouterMeta;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    sget v0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwww:I

    .line 29
    .line 30
    invoke-static {v0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/didi/drouter/store/RouterMeta;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v4, Lcom/didi/drouter/proxy/com_changdu_component_deeplink_google_GoogleDeepLinkCheck;

    .line 35
    .line 36
    invoke-direct {v4}, Lcom/didi/drouter/proxy/com_changdu_component_deeplink_google_GoogleDeepLinkCheck;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x2

    .line 41
    const-class v3, Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;

    .line 42
    .line 43
    const-string v5, ""

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual/range {v2 .. v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;Lcom/didi/drouter/store/IRouterProxy;Ljava/lang/String;Lcom/didi/drouter/service/IFeatureMatcher;II)Lcom/didi/drouter/store/RouterMeta;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v1, v0, p1}, Lcom/didi/drouter/store/MetaLoader;->put(Ljava/lang/Class;Lcom/didi/drouter/store/RouterMeta;Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    sget v0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwww:I

    .line 54
    .line 55
    invoke-static {v0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/didi/drouter/store/RouterMeta;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v3, Lcom/didi/drouter/proxy/com_changdu_component_pay_google_PayServiceGoogleImpl;

    .line 60
    .line 61
    invoke-direct {v3}, Lcom/didi/drouter/proxy/com_changdu_component_pay_google_PayServiceGoogleImpl;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x2

    .line 66
    const-class v2, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;

    .line 67
    .line 68
    const-string v4, ""

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-virtual/range {v1 .. v7}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;Lcom/didi/drouter/store/IRouterProxy;Ljava/lang/String;Lcom/didi/drouter/service/IFeatureMatcher;II)Lcom/didi/drouter/store/RouterMeta;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-class v1, Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    .line 76
    .line 77
    invoke-virtual {p0, v1, v0, p1}, Lcom/didi/drouter/store/MetaLoader;->put(Ljava/lang/Class;Lcom/didi/drouter/store/RouterMeta;Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    sget v0, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwww:I

    .line 81
    .line 82
    invoke-static {v0}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/didi/drouter/store/RouterMeta;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v3, Lcom/didi/drouter/proxy/com_changdu_component_push_firebase_FirebasePushInstance;

    .line 87
    .line 88
    invoke-direct {v3}, Lcom/didi/drouter/proxy/com_changdu_component_push_firebase_FirebasePushInstance;-><init>()V

    .line 89
    .line 90
    .line 91
    const-class v2, Lcom/changdu/component/push/firebase/FirebasePushInstance;

    .line 92
    .line 93
    const-string v4, ""

    .line 94
    .line 95
    invoke-virtual/range {v1 .. v7}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;Lcom/didi/drouter/store/IRouterProxy;Ljava/lang/String;Lcom/didi/drouter/service/IFeatureMatcher;II)Lcom/didi/drouter/store/RouterMeta;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-class v1, Lcom/changdu/component/push/base/BasePushInstance;

    .line 100
    .line 101
    invoke-virtual {p0, v1, v0, p1}, Lcom/didi/drouter/store/MetaLoader;->put(Ljava/lang/Class;Lcom/didi/drouter/store/RouterMeta;Ljava/util/Map;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
