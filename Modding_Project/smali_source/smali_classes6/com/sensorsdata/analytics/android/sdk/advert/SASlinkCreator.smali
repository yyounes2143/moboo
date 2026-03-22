.class public Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private mChannelName:Ljava/lang/String;

.field private mChannelType:Ljava/lang/String;

.field private mCommonRedirectURI:Ljava/lang/String;

.field private mCustomParams:Lorg/json/JSONObject;

.field private mLandingPage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLandingPageType:Lcom/sensorsdata/analytics/android/sdk/advert/model/SATLandingPageType;

.field private mName:Ljava/lang/String;

.field private mRedirectURLOnOtherDevice:Ljava/lang/String;

.field private mRouteParam:Ljava/lang/String;

.field private mSystemParams:Lorg/json/JSONObject;

.field private mTemplateID:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUriSchemeSuffix:Ljava/lang/String;

.field private mUtmCampaign:Ljava/lang/String;

.field private mUtmContent:Ljava/lang/String;

.field private mUtmMedium:Ljava/lang/String;

.field private mUtmSource:Ljava/lang/String;

.field private mUtmTerm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mTemplateID:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mToken:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mChannelType:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mChannelName:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUriSchemeSuffix:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mRedirectURLOnOtherDevice:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mCommonRedirectURI:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmSource:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmCampaign:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmMedium:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmTerm:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmContent:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v0, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mCustomParams:Lorg/json/JSONObject;

    .line 38
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mSystemParams:Lorg/json/JSONObject;

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mLandingPage:Ljava/util/Map;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mTemplateID:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mChannelName:Ljava/lang/String;

    .line 56
    .line 57
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mCommonRedirectURI:Ljava/lang/String;

    .line 58
    .line 59
    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mToken:Ljava/lang/String;

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;ILjava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->trackSlinkCreate(ILjava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->trackSlinkCreate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkInfo(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    sget p2, Lcom/sensorsdata/analytics/advert/R$string;->sensors_analytics_ad_create_link_callback_missing:I

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    const/16 p3, 0x2715

    .line 12
    .line 13
    invoke-direct {p0, p3, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->trackSlinkCreate(ILjava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    sget p3, Lcom/sensorsdata/analytics/advert/R$string;->sensors_analytics_ad_create_link_no_network:I

    .line 24
    .line 25
    invoke-static {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/16 p3, 0x2712

    .line 30
    .line 31
    invoke-direct {p0, p3, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->trackSlinkCreate(ILjava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V

    .line 32
    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_7

    .line 40
    .line 41
    const-string v1, "http://"

    .line 42
    .line 43
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    const-string v1, "https://"

    .line 50
    .line 51
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-nez p3, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mToken:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    const/16 v1, 0x2711

    .line 65
    .line 66
    if-eqz p3, :cond_3

    .line 67
    .line 68
    sget p3, Lcom/sensorsdata/analytics/advert/R$string;->sensors_analytics_ad_create_link_token_missing:I

    .line 69
    .line 70
    invoke-static {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->trackSlinkCreate(ILjava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V

    .line 75
    .line 76
    .line 77
    return v0

    .line 78
    :cond_3
    iget-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mTemplateID:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-eqz p3, :cond_4

    .line 85
    .line 86
    sget p3, Lcom/sensorsdata/analytics/advert/R$string;->sensors_analytics_ad_create_link_template_id_missing:I

    .line 87
    .line 88
    invoke-static {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->trackSlinkCreate(ILjava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V

    .line 93
    .line 94
    .line 95
    return v0

    .line 96
    :cond_4
    iget-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mChannelName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    if-eqz p3, :cond_5

    .line 103
    .line 104
    sget p3, Lcom/sensorsdata/analytics/advert/R$string;->sensors_analytics_ad_create_link_channel_name_missing:I

    .line 105
    .line 106
    invoke-static {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p0, v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->trackSlinkCreate(ILjava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V

    .line 111
    .line 112
    .line 113
    return v0

    .line 114
    :cond_5
    iget-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mCommonRedirectURI:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_6

    .line 121
    .line 122
    sget p3, Lcom/sensorsdata/analytics/advert/R$string;->sensors_analytics_ad_create_link_common_redirect_url_missing:I

    .line 123
    .line 124
    invoke-static {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p0, v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->trackSlinkCreate(ILjava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V

    .line 129
    .line 130
    .line 131
    return v0

    .line 132
    :cond_6
    const/4 p1, 0x1

    .line 133
    return p1

    .line 134
    :cond_7
    :goto_0
    sget p3, Lcom/sensorsdata/analytics/advert/R$string;->sensors_analytics_ad_create_link_custom_url_error:I

    .line 135
    .line 136
    invoke-static {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const/16 p3, 0x2713

    .line 141
    .line 142
    invoke-direct {p0, p3, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->trackSlinkCreate(ILjava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V

    .line 143
    .line 144
    .line 145
    return v0
.end method

.method private getChannelType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mChannelType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private setChannelType(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mChannelType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private trackSlinkCreate(ILjava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V
    .locals 6

    .line 1
    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->trackSlinkCreate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V

    return-void
.end method

.method private trackSlinkCreate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V
    .locals 5

    .line 2
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/model/SASlinkResponse;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/model/SASlinkResponse;-><init>()V

    .line 3
    iput-object p4, v0, Lcom/sensorsdata/analytics/android/sdk/advert/model/SASlinkResponse;->slink:Ljava/lang/String;

    .line 4
    iput p1, v0, Lcom/sensorsdata/analytics/android/sdk/advert/model/SASlinkResponse;->statusCode:I

    .line 5
    iput-object p2, v0, Lcom/sensorsdata/analytics/android/sdk/advert/model/SASlinkResponse;->message:Ljava/lang/String;

    .line 6
    iput-object p3, v0, Lcom/sensorsdata/analytics/android/sdk/advert/model/SASlinkResponse;->slinkID:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mCommonRedirectURI:Ljava/lang/String;

    iput-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/advert/model/SASlinkResponse;->commonRedirectURI:Ljava/lang/String;

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    :try_start_0
    const-string v2, "$ad_dynamic_slink_channel_type"

    const-string v3, "app_share"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "$ad_dynamic_slink_source"

    const-string v4, "Android"

    .line 10
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "$ad_dynamic_slink_channel_name"

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mChannelName:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "$ad_dynamic_slink_data"

    const-string v4, ""

    .line 12
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "$ad_dynamic_slink_short_url"

    .line 13
    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p4

    const-string v2, "$ad_dynamic_slink_status"

    .line 14
    invoke-virtual {p4, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p4, "$ad_dynamic_slink_msg"

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "$ad_slink_id"

    .line 16
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "$ad_slink_template_id"

    iget-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mTemplateID:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "$ad_slink_type"

    const-string p3, "dynamic"

    .line 18
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 20
    :goto_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    const-string p2, "$AdDynamicSlinkCreate"

    invoke-virtual {p1, p2, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz p5, :cond_1

    .line 21
    invoke-interface {p5, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;->onReceive(Lcom/sensorsdata/analytics/android/sdk/advert/model/SASlinkResponse;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createSLink(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getCustomADChannelUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "slink/dynamic/links"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->getRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->checkInfo(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->getProject()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "token"

    .line 44
    .line 45
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mToken:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    new-instance v3, Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "project_name"

    .line 56
    .line 57
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string v1, "slink_template_id"

    .line 61
    .line 62
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mTemplateID:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    const-string v1, "name"

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "channel_type"

    .line 77
    .line 78
    const-string v4, "app_share"

    .line 79
    .line 80
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    const-string v1, "channel_name"

    .line 84
    .line 85
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mChannelName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v1, "custom_param"

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getCustomParams()Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    const-string v1, "system_param"

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getSystemParams()Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    const-string v1, "route_param"

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getRouteParam()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    const-string v1, "fixed_param"

    .line 118
    .line 119
    new-instance v4, Lorg/json/JSONObject;

    .line 120
    .line 121
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v5, "channel_utm_campaign"

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getUtmCampaign()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const-string v5, "channel_utm_content"

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getUtmContent()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const-string v5, "channel_utm_medium"

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getUtmMedium()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    const-string v5, "channel_utm_source"

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getUtmSource()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const-string v5, "channel_utm_term"

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getUtmTerm()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    const-string v1, "uri_scheme_suffix"

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getUriSchemeSuffix()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getLandingPageType()Lcom/sensorsdata/analytics/android/sdk/advert/model/SATLandingPageType;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_0

    .line 191
    .line 192
    const-string v1, "landing_page_type"

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getLandingPageType()Lcom/sensorsdata/analytics/android/sdk/advert/model/SATLandingPageType;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/advert/model/SATLandingPageType;->getTypeName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :catch_0
    move-exception p1

    .line 207
    goto :goto_1

    .line 208
    :cond_0
    :goto_0
    const-string v1, "other_landing_page_map"

    .line 209
    .line 210
    new-instance v4, Lorg/json/JSONObject;

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->getLandingPage()Ljava/util/Map;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    const-string v1, "jump_address"

    .line 223
    .line 224
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mRedirectURLOnOtherDevice:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    .line 228
    .line 229
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    .line 230
    .line 231
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;->POST:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    .line 232
    .line 233
    invoke-direct {v1, v4, v0}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->header(Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->jsonData(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator$1;

    .line 249
    .line 250
    invoke-direct {v1, p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataCreateSLinkCallback;Landroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->callback(Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :goto_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 262
    .line 263
    .line 264
    :cond_1
    return-void
.end method

.method public getCustomParams()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mCustomParams:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLandingPage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mLandingPage:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLandingPageType()Lcom/sensorsdata/analytics/android/sdk/advert/model/SATLandingPageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mLandingPageType:Lcom/sensorsdata/analytics/android/sdk/advert/model/SATLandingPageType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRedirectURLOnOtherDevice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mRedirectURLOnOtherDevice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRouteParam()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mRouteParam:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSystemParams()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mSystemParams:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUriSchemeSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUriSchemeSuffix:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUtmCampaign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmCampaign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUtmContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUtmMedium()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmMedium:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUtmSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUtmTerm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmTerm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCustomParams(Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mCustomParams:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLandingPage(Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mLandingPage:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLandingPageType(Lcom/sensorsdata/analytics/android/sdk/advert/model/SATLandingPageType;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mLandingPageType:Lcom/sensorsdata/analytics/android/sdk/advert/model/SATLandingPageType;

    .line 2
    .line 3
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRedirectURLOnOtherDevice(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mRedirectURLOnOtherDevice:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRouteParam(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mRouteParam:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSystemParams(Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mSystemParams:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUriSchemeSuffix(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUriSchemeSuffix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUtmCampaign(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmCampaign:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUtmContent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUtmMedium(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmMedium:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUtmSource(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUtmTerm(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/SASlinkCreator;->mUtmTerm:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
