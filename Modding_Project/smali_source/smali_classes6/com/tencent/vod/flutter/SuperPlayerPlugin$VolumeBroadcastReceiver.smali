.class Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/SuperPlayerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeBroadcastReceiver"
.end annotation


# instance fields
.field private final mPluginApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;


# direct methods
.method private constructor <init>(Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;->mPluginApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;Lcom/tencent/vod/flutter/SuperPlayerPlugin$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;-><init>(Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "callback message error:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "SuperPlayerPlugin"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

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
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 p2, 0x3

    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;->mPluginApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {p2, v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->access$100(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2, p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;->onNativeEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public success()V
    .locals 0

    .line 1
    return-void
.end method
