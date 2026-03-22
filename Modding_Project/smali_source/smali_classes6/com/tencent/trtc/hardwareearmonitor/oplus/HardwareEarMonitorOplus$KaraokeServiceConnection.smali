.class public Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus$KaraokeServiceConnection;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KaraokeServiceConnection"
.end annotation


# instance fields
.field private mDescName:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;


# direct methods
.method public constructor <init>(Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus$KaraokeServiceConnection;->this$0:Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus$KaraokeServiceConnection;->mDescName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/oplus/OplusKaraokeServiceAidlInterface$Stub;->setDESCRIPTOR(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus$KaraokeServiceConnection;->this$0:Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/tencent/trtc/hardwareearmonitor/oplus/OplusKaraokeServiceAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/trtc/hardwareearmonitor/oplus/OplusKaraokeServiceAidlInterface;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;->access$302(Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;Lcom/tencent/trtc/hardwareearmonitor/oplus/OplusKaraokeServiceAidlInterface;)Lcom/tencent/trtc/hardwareearmonitor/oplus/OplusKaraokeServiceAidlInterface;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus$KaraokeServiceConnection;->this$0:Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;->access$300(Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;)Lcom/tencent/trtc/hardwareearmonitor/oplus/OplusKaraokeServiceAidlInterface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "HardwareEarMonitorOplus"

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, "mKaraokeServiceInterface Create Success"

    .line 26
    .line 27
    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus$KaraokeServiceConnection;->this$0:Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;

    .line 31
    .line 32
    const/16 p2, 0x3e8

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;->notifyResult(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p1, "mKaraokeServiceInterface Create Failed"

    .line 39
    .line 40
    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus$KaraokeServiceConnection;->this$0:Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;

    .line 44
    .line 45
    const/16 p2, 0x3f4

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;->notifyResult(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus$KaraokeServiceConnection;->this$0:Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;->access$302(Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;Lcom/tencent/trtc/hardwareearmonitor/oplus/OplusKaraokeServiceAidlInterface;)Lcom/tencent/trtc/hardwareearmonitor/oplus/OplusKaraokeServiceAidlInterface;

    .line 5
    .line 6
    .line 7
    const-string p1, "HardwareEarMonitorOplus"

    .line 8
    .line 9
    const-string v0, "onServiceDisconnected"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus$KaraokeServiceConnection;->this$0:Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;

    .line 15
    .line 16
    const/16 v0, 0x3f4

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus;->notifyResult(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setDescName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/oplus/HardwareEarMonitorOplus$KaraokeServiceConnection;->mDescName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
