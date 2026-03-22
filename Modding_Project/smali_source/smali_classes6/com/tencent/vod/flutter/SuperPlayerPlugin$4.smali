.class Lcom/tencent/vod/flutter/SuperPlayerPlugin$4;
.super Landroid/view/OrientationEventListener;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/SuperPlayerPlugin;->innerStartVideoOrientationService()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/SuperPlayerPlugin;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$4;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$4;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->isDeviceAutoRotateOn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "onOrientationChanged:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "SuperPlayerPlugin"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$4;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->access$400(Lcom/tencent/vod/flutter/SuperPlayerPlugin;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$4;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->access$500(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eq p1, v0, :cond_0

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "orientationEvent changed:"

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$4;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 66
    .line 67
    invoke-static {v0, p1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->access$502(Lcom/tencent/vod/flutter/SuperPlayerPlugin;I)I

    .line 68
    .line 69
    .line 70
    new-instance v0, Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v1, "orientation"

    .line 76
    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$4;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->access$200(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/16 v1, 0x191

    .line 87
    .line 88
    invoke-static {v1, v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->access$100(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$4;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;->onNativeEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    return-void
.end method
