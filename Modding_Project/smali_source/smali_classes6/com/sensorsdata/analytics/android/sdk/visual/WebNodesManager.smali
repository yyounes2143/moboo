.class public Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;
.super Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;
.source "Proguard"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.Visual.WebNodesManager"


# instance fields
.field private mWebViewUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private parsePageInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "data"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "$title"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "$url"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->createPageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method


# virtual methods
.method public handlerVisualizedFailure(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo$AlertInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sNodesCache:Landroid/util/LruCache;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->createAlertInfo(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public handlerVisualizedPageInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->parsePageInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mWebViewUrl:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Landroid/util/LruCache;

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    .line 38
    .line 39
    invoke-virtual {v1, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method public handlerVisualizedTrack(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mWebViewUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sNodesCache:Landroid/util/LruCache;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mWebViewUrl:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->createNodesInfo(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public parseExtraNodesInfo(Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;
    .locals 3

    .line 1
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "$element_selector"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->set$element_selector(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "tagName"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setTagName(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "$url"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->set$url(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "zIndex"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setzIndex(I)V

    .line 40
    .line 41
    .line 42
    const-string v1, "$title"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->set$title(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "list_selector"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setList_selector(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "scale"

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    double-to-float v1, v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setScale(F)V

    .line 68
    .line 69
    .line 70
    const-string v1, "visibility"

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setVisibility(Z)V

    .line 77
    .line 78
    .line 79
    const-string v1, "lib_version"

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setLib_version(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method
