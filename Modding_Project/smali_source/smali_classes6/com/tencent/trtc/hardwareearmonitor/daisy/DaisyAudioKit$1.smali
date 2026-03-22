.class final Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;


# direct methods
.method public constructor <init>(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;->a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;->a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/tencent/trtc/hardwareearmonitor/daisy/IDaisyAudioEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/trtc/hardwareearmonitor/daisy/IDaisyAudioEngine;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;->access$002(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;Lcom/tencent/trtc/hardwareearmonitor/daisy/IDaisyAudioEngine;)Lcom/tencent/trtc/hardwareearmonitor/daisy/IDaisyAudioEngine;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;->a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;->access$000(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;)Lcom/tencent/trtc/hardwareearmonitor/daisy/IDaisyAudioEngine;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;->a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;->access$102(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;Z)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;->a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;->access$200(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;)Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyFeatureKitManager;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyFeatureKitManager;->onCallBack(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;->a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;->access$300(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;)Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "1.0.1"

    .line 45
    .line 46
    invoke-static {p1, v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;->access$400(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;->a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;

    .line 50
    .line 51
    invoke-static {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;->access$500(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;Landroid/os/IBinder;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;->a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;->access$002(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;Lcom/tencent/trtc/hardwareearmonitor/daisy/IDaisyAudioEngine;)Lcom/tencent/trtc/hardwareearmonitor/daisy/IDaisyAudioEngine;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;->a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;->access$102(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;Z)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit$1;->a:Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;->access$200(Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyAudioKit;)Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyFeatureKitManager;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x4

    .line 20
    invoke-virtual {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/daisy/DaisyFeatureKitManager;->onCallBack(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
