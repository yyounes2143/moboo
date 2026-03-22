.class final Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;


# direct methods
.method public constructor <init>(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

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
    .locals 1

    .line 1
    const-string p1, "HnAudioEngine.HnAudioPlayClient"

    .line 2
    .line 3
    const-string v0, "onServiceConnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->access$002(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;)Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->access$000(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->access$102(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;Z)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->access$200(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->access$300(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->access$400(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;Landroid/os/IBinder;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->access$500(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/16 p2, 0xbb8

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "HnAudioEngine.HnAudioPlayClient"

    .line 2
    .line 3
    const-string v0, "onServiceDisconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->access$102(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->access$500(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->access$500(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v0, 0xbb9

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
