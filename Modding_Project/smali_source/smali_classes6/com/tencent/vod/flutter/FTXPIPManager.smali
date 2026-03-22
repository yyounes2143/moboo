.class public Lcom/tencent/vod/flutter/FTXPIPManager;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;,
        Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXPIPManager"


# instance fields
.field private final mFlutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

.field private final mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private mIsInPipMode:Z

.field private final mPipApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPipFlutterAPI;

.field private misInit:Z

.field private final pipCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->misInit:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->pipCallbacks:Ljava/util/Map;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mIsInPipMode:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterAssets()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mFlutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 23
    .line 24
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPipFlutterAPI;

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPipFlutterAPI;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mPipApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPipFlutterAPI;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/FTXPIPManager;->registerActivityListener()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private handlePipResult(Lcom/tencent/vod/flutter/model/TXPipResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->pipCallbacks:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/model/TXPipResult;->getPlayerId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;->onPipResult(Lcom/tencent/vod/flutter/model/TXPipResult;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private handlePlayerEvent(IILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->pipCallbacks:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, p2, p3}, Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;->onPipPlayerEvent(ILandroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private hasPipPermission(Landroid/app/Activity;)Z
    .locals 4

    .line 1
    const-string v0, "appops"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AppOpsManager;

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1a

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-lt v1, v2, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v2, "android:picture_in_picture"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    return v3

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_1
    return v3
.end method


# virtual methods
.method public addCallback(Ljava/lang/Integer;Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->pipCallbacks:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->pipCallbacks:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public enterPip(Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;Lcom/tencent/vod/flutter/model/TXPlayerHolder;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/FTXPIPManager;->isSupportDevice()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getCurActivity()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1, p2}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->startPip(Landroid/app/Activity;Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;Lcom/tencent/vod/flutter/model/TXPlayerHolder;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mPipApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPipFlutterAPI;

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2, v0, p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPipFlutterAPI;->onPipEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mIsInPipMode:Z

    .line 34
    .line 35
    return p1

    .line 36
    :cond_1
    return v0
.end method

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
    const-string v0, "FTXPIPManager"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public exitCurrentPip()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/vod/flutter/FTXPIPManager;->exitPipByPlayerId(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public exitPipByPlayerId(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/FTXPIPManager;->isInPipMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "vodPlayerId"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "com.tencent.flutter.exitPip"

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public isInPipMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mIsInPipMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSupportDevice()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getCurActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, -0x67

    .line 10
    .line 11
    const-string v2, "FTXPIPManager"

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_3

    .line 20
    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v3, 0x18

    .line 24
    .line 25
    if-lt v1, v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, "android.software.picture_in_picture"

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    const-string v0, "enterPip failed,because PIP feature is disabled"

    .line 40
    .line 41
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v0, -0x68

    .line 45
    .line 46
    return v0

    .line 47
    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/vod/flutter/FTXPIPManager;->hasPipPermission(Landroid/app/Activity;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    const-string v0, "enterPip failed,because PIP has no permission"

    .line 54
    .line 55
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/16 v0, -0x66

    .line 59
    .line 60
    return v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    return v0

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "enterPip failed,because android version is too low,Minimum supported version is android 24,but current is "

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/16 v0, -0x65

    .line 84
    .line 85
    return v0

    .line 86
    :cond_3
    const-string v0, "enterPip failed,because activity is destroyed"

    .line 87
    .line 88
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return v1

    .line 92
    :cond_4
    const-string v0, "current activity is null, please check cur act status!"

    .line 93
    .line 94
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return v1
.end method

.method public notifyCurrentPipPlayerPlayState(IZ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "vodPlayerId"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string p1, "vodPlayOp"

    .line 12
    .line 13
    const/16 v1, 0x66

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x2

    .line 23
    :goto_0
    const-string p2, "isPlaying"

    .line 24
    .line 25
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroid/content/Intent;

    .line 29
    .line 30
    const-string p2, "vodPlayControl"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 40
    .line 41
    invoke-virtual {p2}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "com.tencent.flutter.pipevent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    check-cast p2, Landroid/os/Bundle;

    .line 11
    .line 12
    const-string p1, "pipEventName"

    .line 13
    .line 14
    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    new-instance v0, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq p1, v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    if-ne p1, v1, :cond_2

    .line 28
    .line 29
    :cond_0
    const-string v1, "pipResult"

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/tencent/vod/flutter/model/TXPipResult;

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/model/TXPipResult;->getPlayTime()Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const-string v2, "playTime"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p2}, Lcom/tencent/vod/flutter/FTXPIPManager;->handlePipResult(Lcom/tencent/vod/flutter/model/TXPipResult;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mIsInPipMode:Z

    .line 57
    .line 58
    :cond_2
    iget-object p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mPipApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPipFlutterAPI;

    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p2, p1, p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPipFlutterAPI;->onPipEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    const-string v0, "com.tencent.flutter.pipplayerevent"

    .line 69
    .line 70
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    check-cast p2, Landroid/os/Bundle;

    .line 77
    .line 78
    const-string p1, "vodPlayerId"

    .line 79
    .line 80
    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const-string v0, "pipPlayerEventId"

    .line 85
    .line 86
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const-string v1, "pipPlayerEventParams"

    .line 91
    .line 92
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/vod/flutter/FTXPIPManager;->handlePlayerEvent(IILandroid/os/Bundle;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method public registerActivityListener()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->misInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "com.tencent.flutter.pipevent"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->register(Ljava/lang/String;Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "com.tencent.flutter.pipplayerevent"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->register(Ljava/lang/String;Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->misInit:Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public releaseActivityListener()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->misInit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "com.tencent.flutter.pipevent"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->unregister(Ljava/lang/String;Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "com.tencent.flutter.pipplayerevent"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->unregister(Ljava/lang/String;Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->misInit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "FTXPIPManager"

    .line 29
    .line 30
    const-string v2, "releaseActivityListener error"

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public releaseCallback(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->pipCallbacks:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public success()V
    .locals 0

    .line 1
    return-void
.end method

.method public toAndroidPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager;->mFlutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;->getAssetFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public updatePipActions(Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/FTXPIPManager;->isInPipMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "pipParams"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "com.tencent.flutter.updatePip"

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
