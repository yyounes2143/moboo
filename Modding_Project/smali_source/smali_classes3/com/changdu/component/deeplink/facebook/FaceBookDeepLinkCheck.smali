.class public final Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;
.super Lcom/changdu/component/deeplink/base/DeepLinkBase;
.source "Proguard"


# annotations
.annotation build Lcom/didi/drouter/annotation/Service;
    cache = 0x2
    function = {
        Lcom/changdu/component/deeplink/base/DeepLinkBase;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;",
        "Lcom/changdu/component/deeplink/base/DeepLinkBase;",
        "Lcom/changdu/component/deeplink/base/CDInstallCallBack;",
        "installCallBack",
        "",
        "setCDInstallCallBack",
        "Landroid/content/Context;",
        "context",
        "init",
        "retry",
        "sdkInit",
        "<init>",
        "()V",
        "deeplink-facebook_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Lcom/changdu/component/deeplink/base/CDInstallChannel;

.field public e:Z

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/changdu/component/deeplink/base/DeepLinkBase;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/changdu/component/deeplink/base/CDInstallChannel;->FaceBook:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->d:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 7
    .line 8
    const-string v0, "FaceBookDeepLinkCheck"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->f:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static final a(Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;Lcom/facebook/applinks/AppLinkData;)V
    .locals 4

    .line 1
    const-string v0, "onDeepLinkReceived:  targetUriStr: "

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :cond_0
    const-string p1, ""

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->f:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->e:Z

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    sget-object v1, Lcom/changdu/component/deeplink/base/CDInstallChannel;->FaceBookServer:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->d:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-wide v2, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 42
    .line 43
    sub-long/2addr v0, v2

    .line 44
    iput-wide v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 45
    .line 46
    iget-object v2, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->d:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 49
    .line 50
    invoke-interface {v2, p1, p0, v0, v1}, Lcom/changdu/component/deeplink/base/CDInstallCallBack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    iput-object p1, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v1, "url"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iput-wide v2, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 8
    .line 9
    new-instance v4, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const-string v6, "deepLinkPrefs"

    .line 16
    .line 17
    const/4 v8, 0x4

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    invoke-direct/range {v4 .. v9}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    const/4 v2, 0x0

    .line 27
    :try_start_1
    invoke-static {v4, v1, v2, v0, v2}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object p1, v0

    .line 34
    goto :goto_2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    :goto_0
    :try_start_3
    invoke-virtual {v4, v1}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->e:Z

    .line 50
    .line 51
    sget-object v0, Lcom/changdu/component/deeplink/base/CDInstallChannel;->FaceBook:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->d:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    iget-wide v2, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 64
    .line 65
    sub-long/2addr v0, v2

    .line 66
    iput-wide v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 67
    .line 68
    iget-object v2, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->d:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 71
    .line 72
    invoke-interface {v2, p1, v3, v0, v1}, Lcom/changdu/component/deeplink/base/CDInstallCallBack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->c:Ljava/lang/String;

    .line 77
    .line 78
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    iput-wide v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 83
    .line 84
    sget-object p1, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 85
    .line 86
    new-instance v0, LWwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 87
    .line 88
    invoke-direct {v0, p0}, LWwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v0}, Lcom/facebook/applinks/AppLinkData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :goto_2
    invoke-virtual {v4, v1}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 99
    :catch_1
    :goto_3
    return-void
.end method

.method public retry(Landroid/content/Context;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v1, "url"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iput-wide v2, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 8
    .line 9
    new-instance v4, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const-string v6, "deepLinkPrefs"

    .line 16
    .line 17
    const/4 v8, 0x4

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    invoke-direct/range {v4 .. v9}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    const/4 v2, 0x0

    .line 27
    :try_start_1
    invoke-static {v4, v1, v2, v0, v2}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object p1, v0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    :goto_0
    :try_start_3
    invoke-virtual {v4, v1}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->e:Z

    .line 50
    .line 51
    sget-object v0, Lcom/changdu/component/deeplink/base/CDInstallChannel;->FaceBook:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->d:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    iget-wide v2, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 64
    .line 65
    sub-long/2addr v0, v2

    .line 66
    iput-wide v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 67
    .line 68
    iget-object v2, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->d:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 71
    .line 72
    invoke-interface {v2, p1, v3, v0, v1}, Lcom/changdu/component/deeplink/base/CDInstallCallBack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->c:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_1
    invoke-virtual {v4, v1}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 83
    :catch_1
    :cond_1
    :goto_2
    return-void
.end method

.method public sdkInit(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->INSTANCE:Lcom/changdu/component/deeplink/base/DeepLinkManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->Kkkkkkkkk(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkkkkkkkkk(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setCDInstallCallBack(Lcom/changdu/component/deeplink/base/CDInstallCallBack;)V
    .locals 4
    .param p1    # Lcom/changdu/component/deeplink/base/CDInstallCallBack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->c:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->b:J

    .line 15
    .line 16
    iget-object p1, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->c:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    :cond_0
    iget-object v3, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->d:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 27
    .line 28
    invoke-interface {p1, v2, v3, v0, v1}, Lcom/changdu/component/deeplink/base/CDInstallCallBack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    :catch_0
    :cond_2
    return-void
.end method
