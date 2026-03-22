.class public final Lcom/changdu/component/deeplink/google/a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


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
.method public final onInstallReferrerServiceDisconnected()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 13

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    invoke-static {}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->access$000()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->access$100()Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampServerSeconds()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampServerSeconds()J

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallVersion()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-lez v10, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    move-object p1, v0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 60
    .line 61
    const-string p1, ""

    .line 62
    .line 63
    :cond_3
    move-object v10, p1

    .line 64
    move p1, v0

    .line 65
    new-instance v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    const-string v12, "googlePlayStoreApi"

    .line 72
    .line 73
    invoke-direct/range {v0 .. v12}, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;-><init>(Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->access$202(Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;)Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->access$300()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_2
    invoke-static {}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->access$100()Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 91
    .line 92
    .line 93
    return-void
.end method
