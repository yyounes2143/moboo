.class public Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final TYPE_BROADCAST_RECEIVER:Ljava/lang/String; = "broadcastReceiver"

.field public static final TYPE_GOOGLE_PLAY_STORE_INSTALL_REFERRER_API:Ljava/lang/String; = "googlePlayStoreApi"


# instance fields
.field public appInstallServerTime:J

.field public appInstallTime:J

.field public instantExperienceLaunched:Ljava/lang/Boolean;

.field public referrerClickServerTime:J

.field public referrerClickTime:J

.field public referrerUrl:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->referrerUrl:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->referrerClickTime:J

    .line 4
    iput-wide p4, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->appInstallTime:J

    .line 5
    iput-wide p6, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->referrerClickServerTime:J

    .line 6
    iput-wide p8, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->appInstallServerTime:J

    .line 7
    iput-object p10, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->version:Ljava/lang/String;

    .line 8
    iput-object p11, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->instantExperienceLaunched:Ljava/lang/Boolean;

    .line 9
    iput-object p12, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 13

    .line 12
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v8, -0x1

    .line 13
    const-string v10, ""

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;-><init>(Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 10
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v8, -0x1

    .line 11
    const-string v10, ""

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;-><init>(Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toJsonStr()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "referrerUrl"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->referrerUrl:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "referrerClickTime"

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->referrerClickTime:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "appInstallTime"

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->appInstallTime:J

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "referrerClickServerTime"

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->referrerClickServerTime:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "appInstallServerTime"

    .line 35
    .line 36
    iget-wide v2, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->appInstallServerTime:J

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "instantExperienceLaunched"

    .line 42
    .line 43
    iget-object v2, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->instantExperienceLaunched:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "version"

    .line 49
    .line 50
    iget-object v2, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->version:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "installReferrerType"

    .line 56
    .line 57
    iget-object v2, p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->type:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    const-string v0, ""

    .line 74
    .line 75
    :cond_0
    return-object v0
.end method
