.class public Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static mHasNotified:Z

.field private static mOnInstallReferrerListener:Lcom/changdu/component/deeplink/google/b;

.field private static mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

.field private static mReferrerDetails:Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;


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

.method public static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mHasNotified:Z

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic access$100()Lcom/android/installreferrer/api/InstallReferrerClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$202(Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;)Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;
    .locals 0

    .line 1
    sput-object p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mReferrerDetails:Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->handleCallback()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static handleBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-boolean v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mHasNotified:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "referrer"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;

    .line 23
    .line 24
    const-string v1, "broadcastReceiver"

    .line 25
    .line 26
    invoke-direct {v0, p0, v1}, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mReferrerDetails:Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;

    .line 30
    .line 31
    invoke-static {}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->handleCallback()Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private static handleCallback()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mHasNotified:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mOnInstallReferrerListener:Lcom/changdu/component/deeplink/google/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mReferrerDetails:Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/changdu/component/deeplink/google/b;->a(Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mHasNotified:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    sput-object v1, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mReferrerDetails:Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;

    .line 21
    .line 22
    sput-object v1, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mOnInstallReferrerListener:Lcom/changdu/component/deeplink/google/b;

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public static setOnInstallReferrerListener(Landroid/content/Context;Lcom/changdu/component/deeplink/google/b;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mOnInstallReferrerListener:Lcom/changdu/component/deeplink/google/b;

    .line 2
    .line 3
    invoke-static {}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->handleCallback()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->startListening(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public static startListening(Landroid/content/Context;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mHasNotified:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sput-object p0, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 21
    .line 22
    new-instance v0, Lcom/changdu/component/deeplink/google/a;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/changdu/component/deeplink/google/a;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
