.class Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy$2;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy;->init(Landroid/content/Context;Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyInitParam;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy$2;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy$2;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy;

    .line 17
    .line 18
    const/16 p2, 0x14

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy;->pushEvent(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy$2;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy;

    .line 33
    .line 34
    const/16 p2, 0x13

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxy;->pushEvent(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
