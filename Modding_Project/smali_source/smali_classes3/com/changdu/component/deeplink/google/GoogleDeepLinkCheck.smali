.class public final Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;
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
        "Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;",
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
        "deeplink-google_release"
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

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/changdu/component/deeplink/base/DeepLinkBase;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "GoogleDeepLinkCheck"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->toJsonStr()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;->a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->toJsonStr()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lcom/changdu/component/deeplink/base/CDInstallChannel;->Google:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/changdu/component/deeplink/base/CDInstallCallBack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/changdu/component/deeplink/google/CDInstallReferrerDetails;->toJsonStr()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;->b:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->INSTANCE:Lcom/changdu/component/deeplink/base/DeepLinkManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->startListening(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, LWwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 16
    .line 17
    invoke-direct {v0, p0}, LWwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->setOnInstallReferrerListener(Landroid/content/Context;Lcom/changdu/component/deeplink/google/b;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public retry(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public sdkInit(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public setCDInstallCallBack(Lcom/changdu/component/deeplink/base/CDInstallCallBack;)V
    .locals 2
    .param p1    # Lcom/changdu/component/deeplink/base/CDInstallCallBack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;->a:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;->b:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    :cond_0
    sget-object v1, Lcom/changdu/component/deeplink/base/CDInstallChannel;->Google:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Lcom/changdu/component/deeplink/base/CDInstallCallBack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method
