.class public final Lcom/changdu/component/deeplink/google/CDInstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/changdu/component/deeplink/google/CDInstallReferrerReceiver;",
        "Landroid/content/BroadcastReceiver;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/changdu/component/deeplink/base/DeepLinkManager;->INSTANCE:Lcom/changdu/component/deeplink/base/DeepLinkManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/changdu/component/deeplink/base/DeepLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p2}, Lcom/changdu/component/deeplink/google/CDInstallReferrerHandler;->handleBroadcast(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/changdu/component/deeplink/base/CDInstallReferrerReceiverManager;->INSTANCE:Lcom/changdu/component/deeplink/base/CDInstallReferrerReceiverManager;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/changdu/component/deeplink/base/CDInstallReferrerReceiverManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
