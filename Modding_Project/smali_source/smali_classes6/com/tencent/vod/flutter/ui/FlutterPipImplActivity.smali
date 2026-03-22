.class public Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;
.super Landroid/app/Activity;
.source "Proguard"

# interfaces
.implements Lcom/tencent/rtmp/ITXVodPlayListener;
.implements Landroid/content/ServiceConnection;
.implements Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterPipImplActivity"

.field private static isInPip:Z = false

.field private static pipPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;


# instance fields
.field private configHeight:I

.field private configWidth:I

.field private mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

.field private mIsNeedToStop:Z

.field private mIsPipFinishing:Z

.field private mIsPlayEnd:Z

.field private mIsRegisterReceiver:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mPipContainer:Landroid/widget/RelativeLayout;

.field private mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

.field private mVideoProgress:Landroid/widget/ProgressBar;

.field private mVideoRenderView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field private needToExitPip:Z

.field private final pipActionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->needToExitPip:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->configWidth:I

    .line 8
    .line 9
    iput v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->configHeight:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsNeedToStop:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsRegisterReceiver:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsPipFinishing:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsPlayEnd:Z

    .line 18
    .line 19
    new-instance v0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$1;-><init>(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->pipActionReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handlePlayBack()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handleResumeOrPause(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handleResumeOrPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handlePlayForward()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->destroyPipAct()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method private attachRenderView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 2
    .line 3
    const-string v1, "FlutterPipImplActivity"

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getPlayerType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getPlayerType()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x2

    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getLivePlayer()Lcom/tencent/live2/V2TXLivePlayer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v0, "unknown player type:"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getPlayerType()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    const-string p1, "pip video model is null"

    .line 71
    .line 72
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private bindAndroid12BugServiceIfNeed()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-class v2, Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private configPipMode(Landroid/app/PictureInPictureParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoRenderView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$2;-><init>(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;Landroid/app/PictureInPictureParams;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private controlPipPlayStatus(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->setIsPlaying(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->updatePip(Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private destroyPipAct()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 6
    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsPipFinishing:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    sput-object v1, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->pipPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 12
    .line 13
    sput-boolean v0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->isInPip:Z

    .line 14
    .line 15
    return-void
.end method

.method private exitPip(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsPipFinishing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsPipFinishing:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    return-void

    .line 23
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 24
    .line 25
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoRenderView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 26
    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mMainHandler:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$4;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$4;-><init>(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v1, 0x320

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->destroyPipAct()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private handleAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "com.tencent.flutter.startPip"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->startPipVideo()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "com.tencent.flutter.exitPip"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, "FlutterPipImplActivity"

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    const-string v0, "vodPlayerId"

    .line 27
    .line 28
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move p2, p1

    .line 34
    :goto_0
    if-eq p2, p1, :cond_3

    .line 35
    .line 36
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getCurrentPlayerId()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne p2, p1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v0, "close pip failed, playerId not found:"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsNeedToStop:Z

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handlePipExitEvent()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    const-string v0, "com.tencent.flutter.updatePip"

    .line 74
    .line 75
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    if-eqz p2, :cond_5

    .line 82
    .line 83
    const-string p1, "pipParams"

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 90
    .line 91
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->updatePip(Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    return-void

    .line 95
    :cond_6
    const-string p2, "com.tencent.flutter.doExitPip"

    .line 96
    .line 97
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_7

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->destroyPipAct()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v0, "unknown pip action:"

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handleAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private handlePipExitEvent()V
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/tencent/vod/flutter/model/TXPipResult;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/tencent/vod/flutter/model/TXPipResult;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->isPlaying()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/tencent/vod/flutter/model/TXPipResult;->setPlaying(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getPlayerType()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "pipResult"

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v2, v5, :cond_1

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsPlayEnd:Z

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/tencent/vod/flutter/model/TXPipResult;->setPlayTime(Ljava/lang/Float;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/tencent/rtmp/TXVodPlayer;->getCurrentPlaybackTime()F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/tencent/vod/flutter/model/TXPipResult;->setPlayTime(Ljava/lang/Float;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object v2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getCurrentPlayerId()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Lcom/tencent/vod/flutter/model/TXPipResult;->setPlayerId(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getPlayerType()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-ne v2, v4, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getCurrentPlayerId()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v1, v2}, Lcom/tencent/vod/flutter/model/TXPipResult;->setPlayerId(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const/4 v2, 0x0

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setSurface(Landroid/view/Surface;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getLivePlayer()Lcom/tencent/live2/V2TXLivePlayer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getLivePlayer()Lcom/tencent/live2/V2TXLivePlayer;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v2}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/TextureView;)I

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getLivePlayer()Lcom/tencent/live2/V2TXLivePlayer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1, v2}, Lcom/tencent/live2/V2TXLivePlayer;->setObserver(Lcom/tencent/live2/V2TXLivePlayerObserver;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->pause()V

    .line 151
    .line 152
    .line 153
    iget-boolean v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsNeedToStop:Z

    .line 154
    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    move v1, v4

    .line 158
    goto :goto_2

    .line 159
    :cond_5
    const/4 v1, 0x5

    .line 160
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->sendPipEvent(ILandroid/os/Bundle;)V

    .line 161
    .line 162
    .line 163
    if-ne v1, v4, :cond_6

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_6
    const/4 v5, 0x0

    .line 167
    :goto_3
    invoke-direct {p0, v5}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->exitPip(Z)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method private handlePlayBack()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getPlayerType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->isPlaying()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getCurrentPlaybackTime()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/high16 v2, 0x41200000    # 10.0f

    .line 27
    .line 28
    sub-float/2addr v1, v2

    .line 29
    const/4 v2, 0x0

    .line 30
    cmpg-float v3, v1, v2

    .line 31
    .line 32
    if-gez v3, :cond_0

    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_0
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->seek(F)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method private handlePlayForward()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getPlayerType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->isPlaying()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getCurrentPlaybackTime()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/high16 v2, 0x41200000    # 10.0f

    .line 27
    .line 28
    add-float/2addr v1, v2

    .line 29
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getDuration()F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    cmpl-float v3, v1, v2

    .line 34
    .line 35
    if-lez v3, :cond_0

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_0
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->seek(F)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method private handleResumeOrPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->isPlaying()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->resume()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->pause()V

    .line 4
    :goto_0
    invoke-direct {p0, v1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handleResumeOrPause(Z)V

    return-void
.end method

.method private handleResumeOrPause(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->setIsPlaying(Z)V

    .line 6
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->updatePip(Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;)V

    return-void
.end method

.method private registerPipBroadcast()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsRegisterReceiver:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    .line 6
    .line 7
    const-string v1, "vodPlayControl"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->pipActionReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    invoke-static {p0, v1, v0, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsRegisterReceiver:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private sendPipEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getCurrentPlayerId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "vodPlayerId"

    .line 15
    .line 16
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "pipEventName"

    .line 20
    .line 21
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "com.tencent.flutter.pipevent"

    .line 29
    .line 30
    invoke-virtual {p1, v0, p2}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private sendPlayerEvent(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getCurrentPlayerId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "vodPlayerId"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "pipPlayerEventId"

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string p1, "pipPlayerEventParams"

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "com.tencent.flutter.pipplayerevent"

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private setLivePlayerListener()V
    .locals 0

    .line 1
    return-void
.end method

.method private setUpPipVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoRenderView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPipContainer:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    const-string v1, "#33000000"

    .line 15
    .line 16
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoRenderView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->attachRenderView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->startPipVideo()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private setVodPlayerListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static startPip(Landroid/app/Activity;Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;Lcom/tencent/vod/flutter/model/TXPlayerHolder;)I
    .locals 3

    .line 1
    const/16 v0, -0x6d

    .line 2
    .line 3
    const-string v1, "FlutterPipImplActivity"

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p0, "startPip failed, playerHolder is null"

    .line 8
    .line 9
    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getLivePlayer()Lcom/tencent/live2/V2TXLivePlayer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string p0, "startPip failed, all player is null"

    .line 26
    .line 27
    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v0

    .line 31
    :cond_1
    sget-boolean v0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->isInPip:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string p0, "startPip failed, pip is busy"

    .line 36
    .line 37
    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/16 p0, -0x6e

    .line 41
    .line 42
    return p0

    .line 43
    :cond_2
    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->isInPip:Z

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->pause()V

    .line 47
    .line 48
    .line 49
    sput-object p2, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->pipPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 50
    .line 51
    new-instance p2, Landroid/content/Intent;

    .line 52
    .line 53
    const-class v0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 54
    .line 55
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v1, "pipParams"

    .line 64
    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    .line 67
    .line 68
    const-string p1, "com.tencent.flutter.startPip"

    .line 69
    .line 70
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    const/high16 p1, 0x20000

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    const-string p1, "data"

    .line 79
    .line 80
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x0

    .line 87
    return p0
.end method

.method private startPipVideo()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->startPlay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private startPlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->isPlayingWhenCreate()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->resume()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    const-string v0, "FlutterPipImplActivity"

    .line 18
    .line 19
    const-string v1, "miss player when startPlay"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private unRegisterPipBroadcast()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsRegisterReceiver:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->pipActionReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private updatePip(Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 16
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v1, 0x1a

    .line 20
    .line 21
    if-lt v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->buildParams(Landroid/app/Activity;)Landroid/app/PictureInPictureParams;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lcom/tencent/vod/flutter/ui/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;Landroid/app/PictureInPictureParams;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .locals 0
    .param p1    # Landroid/app/PictureInPictureParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public moveCurActToFront()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPipContainer:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$3;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$3;-><init>(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public movePreActToFront()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getPreActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    const/high16 v0, 0x20000

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/high16 v0, 0x4000000

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Lcom/tencent/vod/flutter/ui/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 17
    .line 18
    iput v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->configWidth:I

    .line 19
    .line 20
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 21
    .line 22
    iput p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->configHeight:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->needToExitPip:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->configWidth:I

    .line 30
    .line 31
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    iget v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->configHeight:I

    .line 36
    .line 37
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 38
    .line 39
    if-eq v0, p1, :cond_1

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handlePipExitEvent()V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->needToExitPip:Z

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mMainHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->bindAndroid12BugServiceIfNeed()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->registerPipBroadcast()V

    .line 19
    .line 20
    .line 21
    sget p1, Lcom/tencent/vod/flutter/R$layout;->activity_flutter_pip_impl:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 24
    .line 25
    .line 26
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/high16 v1, 0x4000000

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 35
    .line 36
    .line 37
    const/high16 v1, -0x80000000

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 44
    .line 45
    .line 46
    sget v0, Lcom/tencent/vod/flutter/R$id;->tv_video_container:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoRenderView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 55
    .line 56
    sget v0, Lcom/tencent/vod/flutter/R$id;->pb_video_progress:I

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/ProgressBar;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    sget v0, Lcom/tencent/vod/flutter/R$id;->rl_pip_container:I

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPipContainer:Landroid/widget/RelativeLayout;

    .line 75
    .line 76
    sget-object v0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->pipPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 77
    .line 78
    const-string v1, "FlutterPipImplActivity"

    .line 79
    .line 80
    if-nez v0, :cond_0

    .line 81
    .line 82
    const-string p1, "lack pipPlayerHolder, please check the pip argument"

    .line 83
    .line 84
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->destroyPipAct()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_0
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->setVodPlayerListener()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->getLivePlayer()Lcom/tencent/live2/V2TXLivePlayer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->setLivePlayerListener()V

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v2, "com.tencent.flutter.exitPip"

    .line 119
    .line 120
    invoke-virtual {v0, v2, p0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->register(Ljava/lang/String;Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v2, "com.tencent.flutter.updatePip"

    .line 128
    .line 129
    invoke-virtual {v0, v2, p0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->register(Ljava/lang/String;Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v2, "data"

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    const-string v2, "pipParams"

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 151
    .line 152
    if-nez v0, :cond_2

    .line 153
    .line 154
    const-string p1, "lack pip params,please check the argument"

    .line 155
    .line 156
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->destroyPipAct()V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_2
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 164
    .line 165
    const/16 v1, 0x1a

    .line 166
    .line 167
    if-lt p1, v1, :cond_3

    .line 168
    .line 169
    invoke-virtual {v0, p0}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->buildParams(Landroid/app/Activity;)Landroid/app/PictureInPictureParams;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->configPipMode(Landroid/app/PictureInPictureParams;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_3
    const/4 p1, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->configPipMode(Landroid/app/PictureInPictureParams;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    return-void

    .line 182
    :cond_5
    const-string p1, "lack pipPlayerHolder player, please check the pip argument"

    .line 183
    .line 184
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->destroyPipAct()V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->unRegisterPipBroadcast()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-class v2, Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->unregisterAllType(Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 36
    .line 37
    sput-object v0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->pipPlayerHolder:Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    sput-boolean v1, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->isInPip:Z

    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->attachRenderView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 43
    .line 44
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "com.tencent.flutter.exitPip"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "com.tencent.flutter.updatePip"

    .line 10
    .line 11
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    check-cast p2, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handleAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onNetStatus(Lcom/tencent/rtmp/TXVodPlayer;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNewIntent(Ljava/lang/Object;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handleIntent(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/tencent/vod/flutter/ui/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    .line 3
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->needToExitPip:Z

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v1, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->sendPipEvent(ILandroid/os/Bundle;)V

    .line 5
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->setUpPipVideo()V

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->handlePipExitEvent()V

    .line 7
    :goto_1
    invoke-super {p0, v0}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onPictureInPictureRequested()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V
    .locals 1
    .param p1    # Landroid/app/PictureInPictureUiState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x4

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->sendPipEvent(ILandroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    if-lt p1, v0, :cond_4

    .line 6
    .line 7
    invoke-static {p0}, Lcom/tencent/vod/flutter/ui/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 14
    .line 15
    const/16 v0, 0x7d4

    .line 16
    .line 17
    const/16 v1, 0x7d6

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    if-ne p2, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->setIsPlaying(Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->updatePip(Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-ne p2, v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->setIsPlaying(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mCurrentParams:Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->updatePip(Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    if-ne p2, v1, :cond_2

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsPlayEnd:Z

    .line 47
    .line 48
    invoke-direct {p0, v3}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->controlPipPlayStatus(Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    if-ne p2, v0, :cond_3

    .line 53
    .line 54
    iput-boolean v3, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsPlayEnd:Z

    .line 55
    .line 56
    invoke-direct {p0, v2}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->controlPipPlayStatus(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/16 p1, 0x7d5

    .line 61
    .line 62
    if-ne p2, p1, :cond_4

    .line 63
    .line 64
    const-string p1, "EVT_PLAY_PROGRESS_MS"

    .line 65
    .line 66
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const-string v0, "EVT_PLAY_DURATION_MS"

    .line 71
    .line 72
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    int-to-float p1, p1

    .line 77
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 78
    .line 79
    div-float/2addr p1, v1

    .line 80
    int-to-float v0, v0

    .line 81
    div-float/2addr v0, v1

    .line 82
    div-float/2addr p1, v0

    .line 83
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    int-to-float v0, v0

    .line 90
    mul-float/2addr p1, v0

    .line 91
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    new-instance v1, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$5;

    .line 100
    .line 101
    invoke-direct {v1, p0, p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$5;-><init>(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->sendPlayerEvent(ILandroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsNeedToStop:Z

    .line 6
    .line 7
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->mIsNeedToStop:Z

    .line 6
    .line 7
    return-void
.end method
