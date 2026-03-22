.class final Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;


# direct methods
.method public constructor <init>(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$2;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$2;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->access$700(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$2;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->access$600(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)Landroid/os/IBinder$DeathRecipient;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$2;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->access$200(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x6

    .line 24
    invoke-virtual {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 25
    .line 26
    .line 27
    const-string v0, "HnAudioEngine.HnAudioClient"

    .line 28
    .line 29
    const-string v1, "service binder died"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$2;->a:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->access$702(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    return-void
.end method
