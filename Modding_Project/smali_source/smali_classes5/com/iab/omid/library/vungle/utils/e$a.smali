.class Lcom/iab/omid/library/vungle/utils/e$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/vungle/utils/e;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

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
    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    const-string p1, "android.media.extra.AUDIO_PLUG_STATE"

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    sget-object p1, Lcom/iab/omid/library/vungle/adsession/OutputDeviceStatus;->NOT_DETECTED:Lcom/iab/omid/library/vungle/adsession/OutputDeviceStatus;

    .line 22
    .line 23
    :goto_0
    invoke-static {p1}, Lcom/iab/omid/library/vungle/utils/e;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/vungle/adsession/OutputDeviceStatus;)Lcom/iab/omid/library/vungle/adsession/OutputDeviceStatus;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/4 p2, 0x1

    .line 28
    if-ne p1, p2, :cond_1

    .line 29
    .line 30
    sget-object p1, Lcom/iab/omid/library/vungle/adsession/OutputDeviceStatus;->UNKNOWN:Lcom/iab/omid/library/vungle/adsession/OutputDeviceStatus;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method
