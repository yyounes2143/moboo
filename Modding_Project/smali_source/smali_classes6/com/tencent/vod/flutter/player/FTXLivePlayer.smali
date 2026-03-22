.class public Lcom/tencent/vod/flutter/player/FTXLivePlayer;
.super Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterLivePlayerApi;
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXLivePlayer"

.field private static final Uninitialized:I = -0x65


# instance fields
.field private final mAppLifeListener:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;

.field private mCurrentRenderMode:J

.field private mCurrentVideoHeight:I

.field private mCurrentVideoWidth:I

.field private final mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private mIsMute:Z

.field private mIsPaused:Z

.field private mLastPlayEvent:I

.field private final mLiveFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;

.field private mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

.field private mNeedPipResume:Z

.field private final mObserver:Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;

.field private final mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

.field private final mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

.field private final mUIHandler:Landroid/os/Handler;

.field private final pipCallback:Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;Lcom/tencent/vod/flutter/FTXPIPManager;Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mNeedPipResume:Z

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLastPlayEvent:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsPaused:Z

    .line 11
    .line 12
    new-instance v1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mUIHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsMute:Z

    .line 24
    .line 25
    iput v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentVideoWidth:I

    .line 26
    .line 27
    iput v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentVideoHeight:I

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentRenderMode:J

    .line 32
    .line 33
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$1;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer$1;-><init>(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->pipCallback:Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;

    .line 39
    .line 40
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$2;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer$2;-><init>(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mAppLifeListener:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 50
    .line 51
    iput-object p3, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

    .line 52
    .line 53
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-static {p2, p3, p0}, Lcom/tencent/vod/flutter/messages/Kkkkkkkkkkkkkkkkkkkkkk;->Wwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterLivePlayerApi;)V

    .line 66
    .line 67
    .line 68
    new-instance p2, Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;

    .line 69
    .line 70
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-direct {p2, p1, p3}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLiveFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;

    .line 86
    .line 87
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->addAppLifeListener(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;

    .line 95
    .line 96
    invoke-direct {p1, p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;-><init>(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mObserver:Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;

    .line 100
    .line 101
    invoke-virtual {p0, p4}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->init(Z)J

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Lcom/tencent/live2/V2TXLivePlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mObserver:Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mUIHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Lcom/tencent/vod/flutter/ui/render/FTXRenderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mNeedPipResume:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/tencent/vod/flutter/player/FTXLivePlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mNeedPipResume:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLastPlayEvent:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$402(Lcom/tencent/vod/flutter/player/FTXLivePlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLastPlayEvent:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLiveFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->notifyPlayerEvent(ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$702(Lcom/tencent/vod/flutter/player/FTXLivePlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentVideoWidth:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$802(Lcom/tencent/vod/flutter/player/FTXLivePlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentVideoHeight:I

    .line 2
    .line 3
    return p1
.end method

.method private applyRenderMode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentRenderMode:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v3, v1, v3

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFit:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderFillMode(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-wide/16 v3, 0x1

    .line 20
    .line 21
    cmp-long v3, v1, v3

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderFillMode(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-wide/16 v3, 0x2

    .line 32
    .line 33
    cmp-long v1, v1, v3

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeScaleFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderFillMode(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)I

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method private notifyPlayerEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mUIHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;-><init>(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setPlayerAppID(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tencent/rtmp/TXLiveBase;->setAppID(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->stopPlay(Z)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->setRenderView(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 14
    .line 15
    :cond_0
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mUIHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mAppLifeListener:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->removeAppLifeListener(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public enableHardwareDecode(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->boolMsgWith(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public enablePictureInPicture(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Ljava/lang/Long;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public enableReceiveSeiMessage(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;Ljava/lang/Boolean;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p3}, Ljava/lang/Long;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayer;->enableReceiveSeiMessage(ZI)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    int-to-long p1, p1

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    const-wide/16 p1, -0x1

    .line 24
    .line 25
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public enterPictureInPictureMode(Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 12
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->pipCallback:Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/tencent/vod/flutter/FTXPIPManager;->addCallback(Ljava/lang/Integer;Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;->getBackIconForAndroid()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/FTXPIPManager;->toAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;->getPlayIconForAndroid()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/FTXPIPManager;->toAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;->getPauseIconForAndroid()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/FTXPIPManager;->toAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;->getForwardIconForAndroid()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/FTXPIPManager;->toAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v11, 0x1

    .line 64
    const/4 v9, 0x0

    .line 65
    invoke-direct/range {v3 .. v11}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->isPlayerPlaying()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {v3, p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->setIsPlaying(Z)V

    .line 77
    .line 78
    .line 79
    iget p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentVideoWidth:I

    .line 80
    .line 81
    if-lez p1, :cond_0

    .line 82
    .line 83
    iget v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentVideoHeight:I

    .line 84
    .line 85
    if-lez v0, :cond_0

    .line 86
    .line 87
    invoke-virtual {v3, p1, v0}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->setRadio(II)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const-string p1, "FTXLivePlayer"

    .line 92
    .line 93
    const-string v0, "miss video size when enter PIP"

    .line 94
    .line 95
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 99
    .line 100
    new-instance v0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 103
    .line 104
    iget-boolean v2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsPaused:Z

    .line 105
    .line 106
    invoke-direct {v0, v1, v2}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;-><init>(Lcom/tencent/live2/V2TXLivePlayer;Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v3, v0}, Lcom/tencent/vod/flutter/FTXPIPManager;->enterPip(Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;Lcom/tencent/vod/flutter/model/TXPlayerHolder;)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_2

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->pausePlayer()V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    const/16 p1, -0x6d

    .line 120
    .line 121
    :cond_2
    :goto_1
    int-to-long v0, p1

    .line 122
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->intMsgWith(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1
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
    const-string v0, "FTXLivePlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public exitPictureInPictureMode(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/tencent/vod/flutter/FTXPIPManager;->exitPipByPlayerId(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getLivePlayer()Lcom/tencent/live2/V2TXLivePlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSupportedBitrate(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;
    .locals 7
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePlayer;->getStreamList()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    check-cast v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;

    .line 28
    .line 29
    new-instance v4, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iget v5, v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;->bitrate:I

    .line 35
    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v6, "bitrate"

    .line 41
    .line 42
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget v5, v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;->width:I

    .line 46
    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const-string v6, "width"

    .line 52
    .line 53
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget v5, v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;->height:I

    .line 57
    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v6, "height"

    .line 63
    .line 64
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget v5, v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;->framerate:F

    .line 68
    .line 69
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const-string v6, "framerate"

    .line 74
    .line 75
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string v5, "url"

    .line 79
    .line 80
    iget-object v3, v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;->url:Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v0}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->listMsgWith(Ljava/util/List;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->listMsgWith(Ljava/util/List;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1
.end method

.method public init(Z)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mObserver:Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setObserver(Lcom/tencent/live2/V2TXLivePlayerObserver;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->applyRenderMode()V

    .line 24
    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->setPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    return-wide v0
.end method

.method public initialize(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;->getValue()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;->getValue()Ljava/lang/Boolean;

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
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->init(Z)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->intMsgWith(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public isPlayerPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsPaused:Z

    .line 6
    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isPlaying(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->isPlayerPlaying()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->boolMsgWith(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public pause(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->pausePlayer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public pausePlayer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseVideo()I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseAudio()I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsPaused:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/FTXPIPManager;->isInPipMode()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->isPlayerPlaying()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/tencent/vod/flutter/FTXPIPManager;->notifyCurrentPipPlayerPlayState(IZ)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public resume(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->resumePlayer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public resumePlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeVideo()I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsMute:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeAudio()I

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsPaused:Z

    .line 19
    .line 20
    new-instance v0, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x7d4

    .line 26
    .line 27
    invoke-direct {p0, v1, v0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->notifyPlayerEvent(ILandroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public setAppID(Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->setPlayerAppID(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setCacheParams(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Long;
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Double;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayer;->setCacheParams(FF)I

    .line 14
    .line 15
    .line 16
    :cond_0
    const-wide/16 p1, -0x1

    .line 17
    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public setConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;)V
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->setPlayerConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setLiveMode(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->getValue()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->getValue()Ljava/lang/Long;

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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->setPlayerLiveMode(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setMute(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)V
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;->getValue()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "set player mute:"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ",player:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "FTXLivePlayer"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;->getValue()Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->setPlayerMute(Z)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public setPlayerConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getMinAutoAdjustCacheTime()Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getMaxAutoAdjustCacheTime()Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getMinAutoAdjustCacheTime()Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getMaxAutoAdjustCacheTime()Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/tencent/live2/V2TXLivePlayer;->setCacheParams(FF)I

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getConnectRetryCount()Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getConnectRetryCount()Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "maxNumberOfReconnection"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getConnectRetryInterval()Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getConnectRetryInterval()Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v1, "secondsBetweenReconnection"

    .line 84
    .line 85
    invoke-virtual {v0, v1, p1}, Lcom/tencent/live2/V2TXLivePlayer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public setPlayerLiveMode(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/high16 v1, 0x40a00000    # 5.0f

    .line 6
    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setCacheParams(FF)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v3, 0x1

    .line 16
    if-ne p1, v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v2, v2}, Lcom/tencent/live2/V2TXLivePlayer;->setCacheParams(FF)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0, v1, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setCacheParams(FF)I

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public setPlayerMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsMute:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseAudio()I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsPaused:Z

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeAudio()I

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setPlayerView(Ljava/lang/Long;)V
    .locals 3
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;->findViewById(I)Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "setPlayerView can not find renderView by id:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ", release player\'s renderView"

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "FTXLivePlayer"

    .line 36
    .line 37
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->setUpPlayerView(Lcom/tencent/vod/flutter/ui/render/FTXRenderView;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setPlayerVolume(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePlayer;->setPlayoutVolume(I)I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setProperty(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-long p1, p1

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    const-wide/16 p1, -0x1

    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public setRenderMode(Ljava/lang/Long;)V
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentRenderMode:J

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentRenderMode:J

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->applyRenderMode()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setVolume(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->getValue()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->getValue()Ljava/lang/Long;

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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->setPlayerVolume(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public showDebugView(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/tencent/live2/V2TXLivePlayer;->showDebugView(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public startLivePlay(Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->startPlayerLivePlay(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->boolMsgWith(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public startPlayerLivePlay(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "FTXLivePlayer"

    .line 2
    .line 3
    const-string v1, "startLivePlay:"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeVideo()I

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsMute:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeAudio()I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLastPlayEvent:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsPaused:Z

    .line 29
    .line 30
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/tencent/live2/V2TXLivePlayer;->startLivePlay(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    const/16 p1, -0x65

    .line 37
    .line 38
    return p1
.end method

.method public stop(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;->getValue()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;->getValue()Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v1

    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->stopPlay(Z)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    move v1, v0

    .line 26
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->boolMsgWith(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public stopPlay(Z)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLastPlayEvent:I

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mIsPaused:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->stopPlay()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, -0x65

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mUIHandler:Landroid/os/Handler;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentVideoWidth:I

    .line 25
    .line 26
    iput v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mCurrentVideoHeight:I

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "stopPlay target clear last img, player:"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v1, "FTXLivePlayer"

    .line 56
    .line 57
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->clearTexture()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->setPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return v0
.end method

.method public success()V
    .locals 0

    .line 1
    return-void
.end method

.method public switchPlayerStream(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePlayer;->switchStream(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method public switchStream(Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->switchPlayerStream(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->intMsgWith(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
