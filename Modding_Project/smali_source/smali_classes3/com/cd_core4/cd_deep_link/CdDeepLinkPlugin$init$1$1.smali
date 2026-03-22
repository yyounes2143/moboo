.class public final Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$init$1$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/deeplink/base/CDInstallCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;->Wwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\'\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/cd_core4/cd_deep_link/CdDeepLinkPlugin$init$1$1",
        "Lcom/changdu/component/deeplink/base/CDInstallCallBack;",
        "",
        "referrerStr",
        "Lcom/changdu/component/deeplink/base/CDInstallChannel;",
        "channel",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;)V",
        "",
        "duration",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V",
        "cd_deep_link_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;


# direct methods
.method public constructor <init>(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$init$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;)Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "referrerStr"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2}, Lcom/changdu/component/deeplink/base/CDInstallChannel;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "channel"

    .line 22
    .line 23
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    const-string p4, "duration"

    .line 32
    .line 33
    invoke-static {p4, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const/4 p4, 0x3

    .line 38
    new-array p4, p4, [Lkotlin/Pair;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object p1, p4, v2

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    aput-object v1, p4, p1

    .line 45
    .line 46
    const/4 p1, 0x2

    .line 47
    aput-object p3, p4, p1

    .line 48
    .line 49
    invoke-static {p4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p3, "handleDeepLink"

    .line 54
    .line 55
    invoke-virtual {v0, p3, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-static {p0}, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/changdu/component/deeplink/base/CDInstallChannel;->getValue()I

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$init$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$init$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "referrerStr"

    .line 10
    .line 11
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lcom/changdu/component/deeplink/base/CDInstallChannel;->getValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v1, "channel"

    .line 24
    .line 25
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const/4 v1, 0x2

    .line 30
    new-array v1, v1, [Lkotlin/Pair;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aput-object p1, v1, v2

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    aput-object p2, v1, p1

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "decryptInstallReferrer"

    .line 43
    .line 44
    invoke-virtual {v0, p2, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p1, p0, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$init$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$init$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$init$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;

    .line 10
    .line 11
    new-instance v1, LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 12
    .line 13
    move-object v3, p1

    .line 14
    move-object v4, p2

    .line 15
    move-wide v5, p3

    .line 16
    invoke-direct/range {v1 .. v6}, LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    move-object p1, v0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
