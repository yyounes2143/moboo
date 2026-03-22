.class final Lcom/tencent/thumbplayer/tcmedia/core/common/TPHeadsetPluginDetector$1;
.super Landroid/media/AudioDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/core/common/TPHeadsetPluginDetector;->registerDeviceCallback()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 1
    const-string p1, "TPHeadsetPluginDetector"

    .line 2
    .line 3
    const-string v0, "onAudioDevicesAdded!"

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-static {v1, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPHeadsetPluginDetector;->access$000()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPHeadsetPluginDetector;->access$100()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPHeadsetPluginDetector;->access$200(Ljava/util/Set;Ljava/util/Set;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 1
    const-string p1, "TPHeadsetPluginDetector"

    .line 2
    .line 3
    const-string v0, "onAudioDevicesRemoved!"

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-static {v1, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPHeadsetPluginDetector;->access$000()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPHeadsetPluginDetector;->access$100()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPHeadsetPluginDetector;->access$200(Ljava/util/Set;Ljava/util/Set;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
