.class public final Lcom/changdu/component/deeplink/base/DeepLinkManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001J\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J%\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J/\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010\u000b\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0019\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/changdu/component/deeplink/base/DeepLinkManager;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/changdu/component/deeplink/base/CDInstallCallBack;",
        "cdInstallCallBack",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Lcom/changdu/component/deeplink/base/CDInstallCallBack;)V",
        "",
        "faceBookAppId",
        "faceBookClientToken",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Z",
        "Landroid/content/Intent;",
        "intent",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Intent;Landroid/content/Context;)V",
        "schema",
        "host",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z",
        "Ljava/lang/String;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Ljava/lang/String;",
        "setFaceBookAppId",
        "(Ljava/lang/String;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "getFaceBookClientToken",
        "setFaceBookClientToken",
        "deeplink-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeepLinkManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeepLinkManager.kt\ncom/changdu/component/deeplink/base/DeepLinkManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1855#2,2:139\n1855#2,2:141\n1855#2,2:143\n*S KotlinDebug\n*F\n+ 1 DeepLinkManager.kt\ncom/changdu/component/deeplink/base/DeepLinkManager\n*L\n23#1:139,2\n35#1:141,2\n65#1:143,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/component/deeplink/base/DeepLinkManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String; = ""

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String; = ""

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/deeplink/base/CDInstallCallBack;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/deeplink/base/DeepLinkManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->INSTANCE:Lcom/changdu/component/deeplink/base/DeepLinkManager;

    .line 7
    .line 8
    return-void
.end method

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
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p2, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    sput-object p3, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v2, "deepLinkPrefs"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v1, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;

    .line 17
    .line 18
    sget-object p1, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 19
    .line 20
    const-class p2, Lcom/changdu/component/deeplink/base/DeepLinkBase;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/changdu/component/router/CDRouter;->invokeRouterServiceList(Ljava/lang/Class;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lcom/changdu/component/deeplink/base/DeepLinkBase;

    .line 41
    .line 42
    invoke-virtual {p2, v1}, Lcom/changdu/component/deeplink/base/DeepLinkBase;->sdkInit(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 2
    .line 3
    const-class v0, Lcom/changdu/component/deeplink/base/DeepLinkBase;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/changdu/component/router/CDRouter;->invokeRouterServiceList(Ljava/lang/Class;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/changdu/component/deeplink/base/DeepLinkBase;

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/changdu/component/deeplink/base/DeepLinkBase;->retry(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "needCheck"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    sput-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 23
    .line 24
    :cond_1
    sget-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    :cond_2
    sget-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/component/deeplink/base/CDInstallCallBack;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/changdu/component/deeplink/base/CDInstallCallBack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p2, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/deeplink/base/CDInstallCallBack;

    .line 2
    .line 3
    sget-object v0, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 4
    .line 5
    const-class v1, Lcom/changdu/component/deeplink/base/DeepLinkBase;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/changdu/component/router/CDRouter;->invokeRouterServiceList(Ljava/lang/Class;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/changdu/component/deeplink/base/DeepLinkBase;

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lcom/changdu/component/deeplink/base/DeepLinkBase;->setCDInstallCallBack(Lcom/changdu/component/deeplink/base/CDInstallCallBack;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/changdu/component/deeplink/base/DeepLinkBase;->init(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 3
    .line 4
    sput-object p1, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Intent;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v2, v1

    .line 15
    :goto_0
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    return v3

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-nez v4, :cond_2

    .line 24
    .line 25
    const-string v4, ""

    .line 26
    .line 27
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_5

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_5

    .line 46
    .line 47
    const-string p2, "android.intent.action.VIEW"

    .line 48
    .line 49
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_5

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    new-instance v2, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;

    .line 69
    .line 70
    const/4 v6, 0x4

    .line 71
    const/4 v7, 0x0

    .line 72
    const-string v4, "deepLinkPrefs"

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    move-object v3, p4

    .line 76
    invoke-direct/range {v2 .. v7}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    const-string p3, "url"

    .line 80
    .line 81
    invoke-virtual {v2, p3, p2}, Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    return v0

    .line 88
    :cond_5
    return v3
.end method
