.class public Lcom/tencent/vod/flutter/SuperPlayerPlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterSuperPlayerPluginAPI;
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterNativeAPI;
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field static final TAG:Ljava/lang/String; = "SuperPlayerPlugin"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private final audioFocusChangeListener:Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;

.field private final brightnessObserver:Landroid/database/ContentObserver;

.field private mCurrentOrientation:I

.field private mFTXDownloadManager:Lcom/tencent/vod/flutter/FTXDownloadManager;

.field private mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private mIsBrightnessObserverRegistered:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mOrientationManager:Landroid/view/OrientationEventListener;

.field private final mPlayers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/vod/flutter/player/FTXBasePlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

.field private mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

.field private final mSDKEvent:Lcom/tencent/rtmp/TXLiveBaseListener;

.field private mTxAudioManager:Lcom/tencent/vod/flutter/FTXAudioManager;

.field private mTxPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

.field private mVolumeBroadcastReceiver:Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPlayers:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/16 v0, 0x19b

    .line 12
    .line 13
    iput v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mCurrentOrientation:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mIsBrightnessObserverRegistered:Z

    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mMainHandler:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance v0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin$1;-><init>(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->audioFocusChangeListener:Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;

    .line 35
    .line 36
    new-instance v0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$2;

    .line 37
    .line 38
    new-instance v1, Landroid/os/Handler;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0, v1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin$2;-><init>(Lcom/tencent/vod/flutter/SuperPlayerPlugin;Landroid/os/Handler;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->brightnessObserver:Landroid/database/ContentObserver;

    .line 51
    .line 52
    new-instance v0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;-><init>(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mSDKEvent:Lcom/tencent/rtmp/TXLiveBaseListener;

    .line 58
    .line 59
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/vod/flutter/SuperPlayerPlugin;Ljava/lang/Double;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->setWindowBrightness(Ljava/lang/Double;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(ILandroid/os/Bundle;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPluginApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/tencent/vod/flutter/SuperPlayerPlugin;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getOrientationEvent(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$500(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mCurrentOrientation:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$502(Lcom/tencent/vod/flutter/SuperPlayerPlugin;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mCurrentOrientation:I

    .line 2
    .line 3
    return p1
.end method

.method private getAudioManager()Lcom/tencent/vod/flutter/FTXAudioManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mTxAudioManager:Lcom/tencent/vod/flutter/FTXAudioManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/vod/flutter/FTXAudioManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/tencent/vod/flutter/FTXAudioManager;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mTxAudioManager:Lcom/tencent/vod/flutter/FTXAudioManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->audioFocusChangeListener:Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/FTXAudioManager;->addAudioFocusChangedListener(Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mTxAudioManager:Lcom/tencent/vod/flutter/FTXAudioManager;

    .line 24
    .line 25
    return-object v0
.end method

.method private getOrientationEvent(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mCurrentOrientation:I

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    if-lt p1, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    const/16 v1, 0x14a

    .line 10
    .line 11
    if-le p1, v1, :cond_2

    .line 12
    .line 13
    :cond_1
    const/16 p1, 0x19b

    .line 14
    .line 15
    return p1

    .line 16
    :cond_2
    const/16 v1, 0xf0

    .line 17
    .line 18
    if-le p1, v1, :cond_3

    .line 19
    .line 20
    const/16 v1, 0x12c

    .line 21
    .line 22
    if-ge p1, v1, :cond_3

    .line 23
    .line 24
    const/16 p1, 0x19c

    .line 25
    .line 26
    return p1

    .line 27
    :cond_3
    const/16 v1, 0x96

    .line 28
    .line 29
    if-le p1, v1, :cond_4

    .line 30
    .line 31
    const/16 v1, 0xd2

    .line 32
    .line 33
    if-ge p1, v1, :cond_4

    .line 34
    .line 35
    const/16 p1, 0x19d

    .line 36
    .line 37
    return p1

    .line 38
    :cond_4
    const/16 v1, 0x3c

    .line 39
    .line 40
    if-le p1, v1, :cond_5

    .line 41
    .line 42
    const/16 v1, 0x6e

    .line 43
    .line 44
    if-ge p1, v1, :cond_5

    .line 45
    .line 46
    const/16 p1, 0x19e

    .line 47
    .line 48
    return p1

    .line 49
    :cond_5
    return v0
.end method

.method private static getParams(ILandroid/os/Bundle;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "event"

    .line 13
    .line 14
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-object v0
.end method

.method private getPipManager()Lcom/tencent/vod/flutter/FTXPIPManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mTxPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/tencent/vod/flutter/FTXPIPManager;-><init>(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mTxPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mTxPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 15
    .line 16
    return-object v0
.end method

.method private getSystemScreenBrightness()F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "screen_brightness"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getBrightnessMax()F

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    int-to-float v0, v0

    .line 22
    div-float/2addr v0, v1

    .line 23
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    const/high16 v0, -0x40800000    # -1.0f

    .line 29
    .line 30
    return v0
.end method

.method private getWindowBrightness()F
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
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    cmpg-float v1, v0, v1

    .line 21
    .line 22
    if-gez v1, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getSystemScreenBrightness()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    .line 29
    .line 30
    float-to-double v2, v0

    .line 31
    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    const/4 v2, 0x4

    .line 36
    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method private innerStartVideoOrientationService()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mOrientationManager:Landroid/view/OrientationEventListener;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    new-instance v0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$4;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 14
    .line 15
    invoke-virtual {v2}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, p0, v2}, Lcom/tencent/vod/flutter/SuperPlayerPlugin$4;-><init>(Lcom/tencent/vod/flutter/SuperPlayerPlugin;Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mOrientationManager:Landroid/view/OrientationEventListener;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v2, "SuperPlayerPlugin"

    .line 30
    .line 31
    const-string v3, "innerStartVideoOrientationService error"

    .line 32
    .line 33
    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 38
    return v0
.end method

.method private setWindowBrightness(Ljava/lang/Double;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "setWindowBrightness:"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SuperPlayerPlugin"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/math/BigDecimal;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getCurActivity()Landroid/app/Activity;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 83
    .line 84
    const/high16 v3, 0x3f800000    # 1.0f

    .line 85
    .line 86
    cmpl-float p1, p1, v3

    .line 87
    .line 88
    if-lez p1, :cond_0

    .line 89
    .line 90
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 91
    .line 92
    :cond_0
    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 93
    .line 94
    const/high16 v3, -0x40800000    # -1.0f

    .line 95
    .line 96
    cmpl-float v3, p1, v3

    .line 97
    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    cmpg-float p1, p1, v3

    .line 102
    .line 103
    if-gez p1, :cond_1

    .line 104
    .line 105
    const p1, 0x3c23d70a    # 0.01f

    .line 106
    .line 107
    .line 108
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 109
    .line 110
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPluginApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-static {v1, v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0, p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;->onNativeEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getAudioManager()Lcom/tencent/vod/flutter/FTXAudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/FTXAudioManager;->abandonAudioFocus()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public createLivePlayer(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getPipManager()Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;-><init>(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;Lcom/tencent/vod/flutter/FTXPIPManager;Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPlayers:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;-><init>()V

    .line 30
    .line 31
    .line 32
    int-to-long v1, p1

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;->setPlayerId(Ljava/lang/Long;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "createLivePlayer :"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v1, "SuperPlayerPlugin"

    .line 58
    .line 59
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public createVodPlayer(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getPipManager()Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;-><init>(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;Lcom/tencent/vod/flutter/FTXPIPManager;Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPlayers:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;-><init>()V

    .line 30
    .line 31
    .line 32
    int-to-long v1, p1

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;->setPlayerId(Ljava/lang/Long;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "createVodPlayer :"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v1, "SuperPlayerPlugin"

    .line 58
    .line 59
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public enableBrightnessObserver(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mIsBrightnessObserverRegistered:Z

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "screen_brightness"

    .line 20
    .line 21
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->brightnessObserver:Landroid/database/ContentObserver;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    .line 30
    .line 31
    iput-boolean v2, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mIsBrightnessObserverRegistered:Z

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->brightnessObserver:Landroid/database/ContentObserver;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mIsBrightnessObserverRegistered:Z

    .line 49
    .line 50
    :cond_1
    return-void
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
    const-string v0, "SuperPlayerPlugin"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public getBrightness()Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getWindowBrightness()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;->setValue(Ljava/lang/Double;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public getIOSSupportPIP()Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->setValue(Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public getLiteAVSDKVersion()Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->getSDKVersionStr()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;->setValue(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public getPlatformVersion()Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "Android "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;->setValue(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public getSysBrightness()Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getSystemScreenBrightness()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;->setValue(Ljava/lang/Double;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public getSystemVolume()Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getAudioManager()Lcom/tencent/vod/flutter/FTXAudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/FTXAudioManager;->getSystemCurrentVolume()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-double v0, v0

    .line 10
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;->setValue(Ljava/lang/Double;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public isDeviceAutoRotateOn()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 3
    .line 4
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "accelerometer_rotation"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    return v0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    const-string v2, "SuperPlayerPlugin"

    .line 25
    .line 26
    const-string v3, "isDeviceAutoRotateOn error"

    .line 27
    .line 28
    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return v0
.end method

.method public isDeviceSupportPip()Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getPipManager()Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/FTXPIPManager;->isSupportDevice()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-long v1, v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->setValue(Ljava/lang/Long;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "SuperPlayerPlugin"

    .line 2
    .line 3
    const-string v0, "called onAttachedToActivity"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 4
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "onAttachedToEngine"

    .line 2
    .line 3
    const-string v1, "SuperPlayerPlugin"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, v2}, Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "FTXRenderViewType"

    .line 24
    .line 25
    iget-object v3, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

    .line 26
    .line 27
    invoke-interface {v0, v2, v3}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 28
    .line 29
    .line 30
    const-string v0, "plugin version is:12.6.2"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p0}, Lcom/tencent/vod/flutter/messages/Illllllllllllllllllll;->Wwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterSuperPlayerPluginAPI;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p0}, Lcom/tencent/vod/flutter/messages/Kkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterNativeAPI;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    .line 50
    .line 51
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPluginApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 61
    .line 62
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->attachBindLife(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 72
    .line 73
    invoke-direct {p1, v0}, Lcom/tencent/vod/flutter/FTXDownloadManager;-><init>(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFTXDownloadManager:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->registerReceiver()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mSDKEvent:Lcom/tencent/rtmp/TXLiveBaseListener;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/tencent/rtmp/TXLiveBase;->setListener(Lcom/tencent/rtmp/TXLiveBaseListener;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    const-string v0, "SuperPlayerPlugin"

    .line 2
    .line 3
    const-string v1, "called onDetachedFromActivity"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "SuperPlayerPlugin"

    .line 2
    .line 3
    const-string v1, "onDetachedFromEngine"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFTXDownloadManager:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/FTXDownloadManager;->destroy()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mOrientationManager:Landroid/view/OrientationEventListener;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mTxPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/FTXPIPManager;->releaseActivityListener()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mTxPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/FTXPIPManager;->exitCurrentPip()V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 33
    .line 34
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-class v2, Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->unregisterReceiver()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->destroy(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-static {p1}, Lcom/tencent/rtmp/TXLiveBase;->setListener(Lcom/tencent/rtmp/TXLiveBaseListener;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 65
    .line 66
    return-void
.end method

.method public onHandleAudioFocusPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPluginApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;->onNativeEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onHandleAudioFocusPlay()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPluginApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;->onNativeEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public registerReceiver()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPluginApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;-><init>(Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;Lcom/tencent/vod/flutter/SuperPlayerPlugin$1;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mVolumeBroadcastReceiver:Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;

    .line 10
    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 22
    .line 23
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mVolumeBroadcastReceiver:Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    invoke-static {v1, v2, v0, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public registerSysBrightness(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->getValue()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->getValue()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->enableBrightnessObserver(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public releasePlayer(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .locals 4
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;->getPlayerId()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;->getPlayerId()Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "releasePlayer :"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "SuperPlayerPlugin"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPlayers:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/tencent/vod/flutter/player/FTXBasePlayer;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "releasePlayer start destroy player :"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->destroy()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mPlayers:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method public requestAudioFocus()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getAudioManager()Lcom/tencent/vod/flutter/FTXAudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/FTXAudioManager;->requestAudioFocus()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public restorePageBrightness()V
    .locals 2

    .line 1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->setWindowBrightness(Ljava/lang/Double;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setBrightness(Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;)V
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;->getValue()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->setWindowBrightness(Ljava/lang/Double;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setConsoleEnabled(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->getValue()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->getValue()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lcom/tencent/rtmp/TXLiveBase;->setConsoleEnabled(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setDrmProvisionEnv(Ljava/lang/Long;)V
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    cmp-long p1, v0, v2

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/tencent/rtmp/TXPlayerGlobalSetting$DrmProvisionEnv;->DRM_PROVISION_ENV_CN:Lcom/tencent/rtmp/TXPlayerGlobalSetting$DrmProvisionEnv;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/tencent/rtmp/TXPlayerGlobalSetting;->setDrmProvisionEnv(Lcom/tencent/rtmp/TXPlayerGlobalSetting$DrmProvisionEnv;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object p1, Lcom/tencent/rtmp/TXPlayerGlobalSetting$DrmProvisionEnv;->DRM_PROVISION_ENV_COM:Lcom/tencent/rtmp/TXPlayerGlobalSetting$DrmProvisionEnv;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/tencent/rtmp/TXPlayerGlobalSetting;->setDrmProvisionEnv(Lcom/tencent/rtmp/TXPlayerGlobalSetting$DrmProvisionEnv;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setGlobalCacheFolderCustomPath(Lcom/tencent/vod/flutter/messages/FtxMessages$CachePathMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$CachePathMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$CachePathMsg;->getAndroidAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "setGlobalCacheFolderCustomPath:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SuperPlayerPlugin"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/tencent/rtmp/TXPlayerGlobalSetting;->setCacheFolderPath(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->setValue(Ljava/lang/Boolean;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public setGlobalCacheFolderPath(Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 3
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "setGlobalCacheFolderPath:"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;->getValue()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "SuperPlayerPlugin"

    .line 46
    .line 47
    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;->getValue()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/tencent/rtmp/TXPlayerGlobalSetting;->setCacheFolderPath(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const/4 p1, 0x0

    .line 84
    :goto_0
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->setValue(Ljava/lang/Boolean;)V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

.method public setGlobalEnv(Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 3
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/tencent/rtmp/TXLiveBase;->setGlobalEnv(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;-><init>()V

    .line 12
    .line 13
    .line 14
    int-to-long v1, p1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->setValue(Ljava/lang/Long;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public setGlobalLicense(Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;)V
    .locals 3
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->getInstance()Lcom/tencent/rtmp/TXLiveBase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 6
    .line 7
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;->getLicenseUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;->getLicenseKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/rtmp/TXLiveBase;->setLicence(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setGlobalMaxCacheSize(Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;)V
    .locals 4
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->getValue()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->getValue()Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->getValue()Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Lcom/tencent/rtmp/TXPlayerGlobalSetting;->setMaxCacheSize(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setLicenseFlexibleValid(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->getValue()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->getValue()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lcom/tencent/rtmp/TXPlayerGlobalSetting;->setLicenseFlexibleValid(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setLogLevel(Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->getValue()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->getValue()Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lcom/tencent/rtmp/TXLiveBase;->setLogLevel(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setSystemVolume(Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getAudioManager()Lcom/tencent/vod/flutter/FTXAudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;->getValue()Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/FTXAudioManager;->setSystemVolume(Ljava/lang/Double;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setUserId(Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;)V
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/tencent/rtmp/TXLiveBase;->setUserId(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public startVideoOrientationService()Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->innerStartVideoOrientationService()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->setValue(Ljava/lang/Boolean;)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method

.method public success()V
    .locals 0

    .line 1
    return-void
.end method

.method public unregisterReceiver()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->getAudioManager()Lcom/tencent/vod/flutter/FTXAudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->audioFocusChangeListener:Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/FTXAudioManager;->removeAudioFocusChangedListener(Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->mVolumeBroadcastReceiver:Lcom/tencent/vod/flutter/SuperPlayerPlugin$VolumeBroadcastReceiver;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->enableBrightnessObserver(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-string v1, "SuperPlayerPlugin"

    .line 28
    .line 29
    const-string v2, "unregisterReceiver failed"

    .line 30
    .line 31
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
