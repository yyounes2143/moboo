.class public Lcom/tencent/vod/flutter/player/FTXVodPlayer;
.super Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;
.source "Proguard"

# interfaces
.implements Lcom/tencent/rtmp/ITXVodPlayListener;
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterVodPlayerApi;
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXVodPlayer"

.field private static final Uninitialized:I = -0x65


# instance fields
.field private final mAppLifeListener:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;

.field private mCurrentRenderMode:J

.field private mEnableHardwareDecode:Z

.field private mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private mHardwareDecodeFail:Z

.field private mNeedPipResume:Z

.field private final mPipCallback:Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;

.field private final mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

.field private final mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

.field private mTxImageSprite:Lcom/tencent/rtmp/TXImageSprite;

.field private final mUIHandler:Landroid/os/Handler;

.field private final mVodFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodPlayerFlutterAPI;

.field private mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;Lcom/tencent/vod/flutter/FTXPIPManager;Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mEnableHardwareDecode:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mHardwareDecodeFail:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mNeedPipResume:Z

    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mUIHandler:Landroid/os/Handler;

    .line 22
    .line 23
    const-wide/16 v0, 0x1

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mCurrentRenderMode:J

    .line 26
    .line 27
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;-><init>(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipCallback:Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;

    .line 33
    .line 34
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$2;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer$2;-><init>(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mAppLifeListener:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 44
    .line 45
    iput-object p3, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

    .line 46
    .line 47
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-static {p2, p3, p0}, Lcom/tencent/vod/flutter/messages/OO0;->Kkkkkkkkkk(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterVodPlayerApi;)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodPlayerFlutterAPI;

    .line 63
    .line 64
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-direct {p2, p1, p3}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodPlayerFlutterAPI;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodPlayerFlutterAPI;

    .line 80
    .line 81
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->addAppLifeListener(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p4}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->init(Z)J

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/rtmp/TXVodPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/vod/flutter/ui/render/FTXRenderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/vod/flutter/ui/render/FTXRenderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mNeedPipResume:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/tencent/vod/flutter/player/FTXVodPlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mNeedPipResume:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodPlayerFlutterAPI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodPlayerFlutterAPI;

    .line 2
    .line 3
    return-object p0
.end method

.method private getPlayerImageSprite(Ljava/lang/Double;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mTxImageSprite:Lcom/tencent/rtmp/TXImageSprite;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXImageSprite;->getThumbnail(F)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 23
    .line 24
    const/16 v2, 0x64

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    const-string p1, "FTXVodPlayer"

    .line 35
    .line 36
    const-string v0, "getImageSprite failed, time is null or initImageSprite not invoke"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method

.method private releaseTXImageSprite()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mTxImageSprite:Lcom/tencent/rtmp/TXImageSprite;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXImageSprite;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mTxImageSprite:Lcom/tencent/rtmp/TXImageSprite;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public addSubtitleSource(Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;)V
    .locals 3
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;->getMimeType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/rtmp/TXVodPlayer;->addSubtitleSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public autoEnterPictureInPictureMode(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
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

.method public deselectTrack(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->getValue()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->getValue()Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->deselectTrack(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->stopPlay(Z)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 18
    .line 19
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mAppLifeListener:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->removeAppLifeListener(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->releaseTXImageSprite()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/FTXPIPManager;->releaseCallback(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public enableHardwareDecode(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 1
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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->enablePlayerHardwareDecode(Z)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->boolMsgWith(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->boolMsgWith(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public enablePlayerHardwareDecode(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mEnableHardwareDecode:Z

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->enableHardwareDecode(Z)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public enterPictureInPictureMode(Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 9
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipCallback:Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/tencent/vod/flutter/FTXPIPManager;->addCallback(Ljava/lang/Integer;Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

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
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

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
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

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
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

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
    invoke-direct/range {v3 .. v8}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->isPlayerPlaying()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {v3, p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->setIsPlaying(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->getPlayerCurrentPlaybackTime()F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {v3, p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->setCurrentPlayTime(F)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 80
    .line 81
    if-eqz p1, :cond_0

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {v3, p1, v0}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->setRadio(II)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 97
    .line 98
    new-instance v0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 101
    .line 102
    invoke-direct {v0, v1}, Lcom/tencent/vod/flutter/model/TXPlayerHolder;-><init>(Lcom/tencent/rtmp/TXVodPlayer;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v3, v0}, Lcom/tencent/vod/flutter/FTXPIPManager;->enterPip(Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;Lcom/tencent/vod/flutter/model/TXPlayerHolder;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_1

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->playerPause()V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const/16 p1, -0x6d

    .line 116
    .line 117
    :cond_1
    :goto_0
    int-to-long v0, p1

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->intMsgWith(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
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
    const-string v0, "FTXVodPlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public exitPictureInPictureMode(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

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
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->boolMsgWith(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getAudioTrackInfo(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;
    .locals 5
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->getAudioTrackInfo()Ljava/util/List;

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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/tencent/rtmp/TXTrackInfo;

    .line 29
    .line 30
    new-instance v2, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iget v3, v1, Lcom/tencent/rtmp/TXTrackInfo;->trackType:I

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "trackType"

    .line 42
    .line 43
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget v3, v1, Lcom/tencent/rtmp/TXTrackInfo;->trackIndex:I

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "trackIndex"

    .line 53
    .line 54
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const-string v3, "name"

    .line 58
    .line 59
    iget-object v4, v1, Lcom/tencent/rtmp/TXTrackInfo;->name:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-boolean v3, v1, Lcom/tencent/rtmp/TXTrackInfo;->isSelected:Z

    .line 65
    .line 66
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, "isSelected"

    .line 71
    .line 72
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-boolean v3, v1, Lcom/tencent/rtmp/TXTrackInfo;->isExclusive:Z

    .line 76
    .line 77
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "isExclusive"

    .line 82
    .line 83
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-boolean v1, v1, Lcom/tencent/rtmp/TXTrackInfo;->isInternal:Z

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v3, "isInternal"

    .line 93
    .line 94
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v0}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->listMsgWith(Ljava/util/List;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :cond_1
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->listMsgWith(Ljava/util/List;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1
.end method

.method public getBitrateIndex(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->getPlayerBitrateIndex()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-long v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->intMsgWith(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getBufferDuration(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->getPlayerBufferDuration()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    float-to-double v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->doubleMsgWith(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public getCurrentPlaybackTime(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->getPlayerCurrentPlaybackTime()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    float-to-double v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->doubleMsgWith(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public getDuration(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->getDuration()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    float-to-double v0, p1

    .line 10
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->doubleMsgWith(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->doubleMsgWith(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public getHeight(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->getPlayerHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-long v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->intMsgWith(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getImageSprite(Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$UInt8ListMsg;
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;->getValue()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;->getValue()Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->getPlayerImageSprite(Ljava/lang/Double;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->uInt8ListMsg([B)Lcom/tencent/vod/flutter/messages/FtxMessages$UInt8ListMsg;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    new-array p1, p1, [B

    .line 22
    .line 23
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->uInt8ListMsg([B)Lcom/tencent/vod/flutter/messages/FtxMessages$UInt8ListMsg;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public getPlayableDuration(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->getPlayerPlayableDuration()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    float-to-double v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->doubleMsgWith(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public getPlayerBitrateIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getBitrateIndex()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getPlayerBufferDuration()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getBufferDuration()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getPlayerCurrentPlaybackTime()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getCurrentPlaybackTime()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getPlayerHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getPlayerPlayableDuration()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getPlayableDuration()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getPlayerRenderMode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mCurrentRenderMode:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPlayerSupportedBitrates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getSupportedBitrates()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    check-cast v4, Lcom/tencent/rtmp/TXBitrateItem;

    .line 28
    .line 29
    new-instance v5, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iget v6, v4, Lcom/tencent/rtmp/TXBitrateItem;->bitrate:I

    .line 35
    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const-string v7, "bitrate"

    .line 41
    .line 42
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget v6, v4, Lcom/tencent/rtmp/TXBitrateItem;->width:I

    .line 46
    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string v7, "width"

    .line 52
    .line 53
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget v6, v4, Lcom/tencent/rtmp/TXBitrateItem;->height:I

    .line 57
    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const-string v7, "height"

    .line 63
    .line 64
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget v4, v4, Lcom/tencent/rtmp/TXBitrateItem;->index:I

    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v6, "index"

    .line 74
    .line 75
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-object v1

    .line 83
    :cond_1
    const/4 v0, 0x0

    .line 84
    return-object v0
.end method

.method public getPlayerWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getSubtitleTrackInfo(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;
    .locals 5
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->getSubtitleTrackInfo()Ljava/util/List;

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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/tencent/rtmp/TXTrackInfo;

    .line 29
    .line 30
    new-instance v2, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iget v3, v1, Lcom/tencent/rtmp/TXTrackInfo;->trackType:I

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "trackType"

    .line 42
    .line 43
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget v3, v1, Lcom/tencent/rtmp/TXTrackInfo;->trackIndex:I

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "trackIndex"

    .line 53
    .line 54
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const-string v3, "name"

    .line 58
    .line 59
    iget-object v4, v1, Lcom/tencent/rtmp/TXTrackInfo;->name:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-boolean v3, v1, Lcom/tencent/rtmp/TXTrackInfo;->isSelected:Z

    .line 65
    .line 66
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, "isSelected"

    .line 71
    .line 72
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-boolean v3, v1, Lcom/tencent/rtmp/TXTrackInfo;->isExclusive:Z

    .line 76
    .line 77
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "isExclusive"

    .line 82
    .line 83
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-boolean v1, v1, Lcom/tencent/rtmp/TXTrackInfo;->isInternal:Z

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v3, "isInternal"

    .line 93
    .line 94
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v0}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->listMsgWith(Ljava/util/List;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :cond_1
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->listMsgWith(Ljava/util/List;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1
.end method

.method public getSupportedBitrate(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->getPlayerSupportedBitrates()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->listMsgWith(Ljava/util/List;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->getPlayerWidth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-long v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->intMsgWith(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public init(Z)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/rtmp/TXVodPlayer;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setRenderMode(I)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v0, v2}, Lcom/tencent/vod/flutter/tools/FTXVersionAdapter;->enableCustomSubtitle(Lcom/tencent/rtmp/TXVodPlayConfig;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/tencent/vod/flutter/tools/FTXVersionAdapter;->enableDrmLevel3(Lcom/tencent/rtmp/TXVodPlayConfig;Z)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setConfig(Lcom/tencent/rtmp/TXVodPlayConfig;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 45
    .line 46
    new-instance v1, Lcom/tencent/vod/flutter/player/FTXVodPlayer$7;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer$7;-><init>(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setVodSubtitleDataListener(Lcom/tencent/rtmp/ITXVodPlayListener$ITXVodSubtitleDataListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->setPlayer(Z)V

    .line 55
    .line 56
    .line 57
    :cond_0
    const-wide/16 v0, 0x0

    .line 58
    .line 59
    return-wide v0
.end method

.method public initImageSprite(Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;)V
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->releaseTXImageSprite()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tencent/rtmp/TXImageSprite;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lcom/tencent/rtmp/TXImageSprite;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mTxImageSprite:Lcom/tencent/rtmp/TXImageSprite;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;->getVvtUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;->getImageUrls()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/tencent/rtmp/TXImageSprite;->setVTTUrlAndImageUrls(Ljava/lang/String;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void
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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->init(Z)J

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

.method public isInPIPMode(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
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

.method public isLoop(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->isVodPlayerLoop()Z

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

.method public isPlayerPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

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
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->isPlayerPlaying()Z

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

.method public isVodPlayerLoop()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->isLoop()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public onNetStatus(Lcom/tencent/rtmp/TXVodPlayer;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mUIHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$6;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/tencent/vod/flutter/player/FTXVodPlayer$6;-><init>(Lcom/tencent/vod/flutter/player/FTXVodPlayer;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V
    .locals 8

    .line 1
    const/16 v0, 0x7d9

    .line 2
    .line 3
    const-string v1, ","

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p2, v0, :cond_3

    .line 7
    .line 8
    const/16 v0, 0x7dd

    .line 9
    .line 10
    if-eq p2, v0, :cond_2

    .line 11
    .line 12
    const/16 p1, 0x7e3

    .line 13
    .line 14
    if-eq p2, p1, :cond_1

    .line 15
    .line 16
    const/16 p1, 0x83a

    .line 17
    .line 18
    if-eq p2, p1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    iput-boolean v2, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mHardwareDecodeFail:Z

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->reDraw()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->notifyTextureResolution(II)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_3
    const-string p1, "EVT_PARAM3"

    .line 45
    .line 46
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    array-length v0, p1

    .line 61
    const/4 v3, 0x6

    .line 62
    if-ne v0, v3, :cond_4

    .line 63
    .line 64
    const/4 v0, 0x4

    .line 65
    aget-object v1, p1, v0

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v3, 0x2

    .line 72
    aget-object v4, p1, v3

    .line 73
    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    sub-int/2addr v1, v4

    .line 79
    add-int/2addr v1, v2

    .line 80
    const/4 v4, 0x5

    .line 81
    aget-object v5, p1, v4

    .line 82
    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const/4 v6, 0x3

    .line 88
    aget-object v7, p1, v6

    .line 89
    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    sub-int/2addr v5, v7

    .line 95
    add-int/2addr v5, v2

    .line 96
    aget-object v3, p1, v3

    .line 97
    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    neg-int v3, v3

    .line 103
    aget-object v6, p1, v6

    .line 104
    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    neg-int v6, v6

    .line 110
    aget-object v0, p1, v0

    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/2addr v0, v2

    .line 117
    const/4 v7, 0x0

    .line 118
    aget-object v7, p1, v7

    .line 119
    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    sub-int/2addr v0, v7

    .line 125
    aget-object v4, p1, v4

    .line 126
    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    add-int/2addr v4, v2

    .line 132
    aget-object p1, p1, v2

    .line 133
    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    sub-int/2addr v4, p1

    .line 139
    const-string p1, "videoWidth"

    .line 140
    .line 141
    invoke-virtual {p3, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    const-string p1, "videoHeight"

    .line 145
    .line 146
    invoke-virtual {p3, p1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    const-string p1, "videoLeft"

    .line 150
    .line 151
    invoke-virtual {p3, p1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    const-string p1, "videoTop"

    .line 155
    .line 156
    invoke-virtual {p3, p1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    const-string p1, "videoRight"

    .line 160
    .line 161
    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    const-string p1, "videoBottom"

    .line 165
    .line 166
    invoke-virtual {p3, p1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mUIHandler:Landroid/os/Handler;

    .line 170
    .line 171
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$3;

    .line 172
    .line 173
    invoke-direct {v0, p0, p2, p3}, Lcom/tencent/vod/flutter/player/FTXVodPlayer$3;-><init>(Lcom/tencent/vod/flutter/player/FTXVodPlayer;ILandroid/os/Bundle;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_4
    :goto_0
    const/16 p1, 0x7d5

    .line 181
    .line 182
    if-eq p2, p1, :cond_5

    .line 183
    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v0, "onPlayEvent:"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v0, "EVT_MSG"

    .line 201
    .line 202
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    const-string v0, "FTXVodPlayer"

    .line 214
    .line 215
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_5
    const/16 p1, 0x7d3

    .line 219
    .line 220
    if-ne p2, p1, :cond_6

    .line 221
    .line 222
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mUIHandler:Landroid/os/Handler;

    .line 223
    .line 224
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$4;

    .line 225
    .line 226
    invoke-direct {v0, p0, p2, p3}, Lcom/tencent/vod/flutter/player/FTXVodPlayer$4;-><init>(Lcom/tencent/vod/flutter/player/FTXVodPlayer;ILandroid/os/Bundle;)V

    .line 227
    .line 228
    .line 229
    const-wide/16 p2, 0xc8

    .line 230
    .line 231
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_6
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mUIHandler:Landroid/os/Handler;

    .line 236
    .line 237
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$5;

    .line 238
    .line 239
    invoke-direct {v0, p0, p2, p3}, Lcom/tencent/vod/flutter/player/FTXVodPlayer$5;-><init>(Lcom/tencent/vod/flutter/player/FTXVodPlayer;ILandroid/os/Bundle;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method public pause(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->playerPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public playerPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->pause()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/FTXPIPManager;->isInPipMode()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->isPlayerPlaying()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/tencent/vod/flutter/FTXPIPManager;->notifyCurrentPipPlayerPlayState(IZ)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public playerResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->resume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reDraw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->getRenderView()Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;->reDrawVod()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public requestPlayerAudioFocus(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setRequestAudioFocus(Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public resume(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->playerResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public seek(Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;->getValue()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;->getValue()Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->seekPlayer(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public seekPlayer(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->seek(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public seekToPdtTime(J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/tencent/rtmp/TXVodPlayer;->seekToPdtTime(J)V

    :cond_0
    return-void
.end method

.method public seekToPdtTime(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->getValue()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->getValue()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->seekToPdtTime(J)V

    :cond_0
    return-void
.end method

.method public selectTrack(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->getValue()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->getValue()Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->selectTrack(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public setAudioPlayOutVolume(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->setPlayerAudioPlayoutVolume(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setAutoPlay(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)V
    .locals 1
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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->setIsAutoPlay(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setBitrateIndex(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->setPlayerBitrateIndex(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;)V
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->setPlayConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setIsAutoPlay(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setAutoPlay(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setLoop(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)V
    .locals 1
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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->setPlayerLoop(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setMute(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)V
    .locals 1
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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->setPlayerMute(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setPlayConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/tencent/vod/flutter/FTXTransformation;->transformToVodConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;)Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/tools/FTXVersionAdapter;->enableCustomSubtitle(Lcom/tencent/rtmp/TXVodPlayConfig;I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/tools/FTXVersionAdapter;->enableDrmLevel3(Lcom/tencent/rtmp/TXVodPlayConfig;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setConfig(Lcom/tencent/rtmp/TXVodPlayConfig;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setPlayer(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->setPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setPlayerAudioPlayoutVolume(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setAudioPlayoutVolume(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPlayerBitrateIndex(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setBitrateIndex(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPlayerLoop(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setLoop(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPlayerMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setMute(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPlayerRate(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setRate(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPlayerStartTime(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    double-to-float p1, p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setStartTime(F)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setPlayerToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setToken(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setToken(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
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
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mRenderViewFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

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
    const-string v1, "FTXVodPlayer"

    .line 36
    .line 37
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->setUpPlayerView(Lcom/tencent/vod/flutter/ui/render/FTXRenderView;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setRate(Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;->getValue()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;->getValue()Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->setPlayerRate(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setRenderMode(Ljava/lang/Long;)V
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mCurrentRenderMode:J

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
    iput-wide v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mCurrentRenderMode:J

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->updateTextureRenderMode(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public setRequestAudioFocus(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 1
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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->requestPlayerAudioFocus(Z)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->boolMsgWith(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->boolMsgWith(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public setStartTime(Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;)V
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;->getValue()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;->getValue()Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->setPlayerStartTime(D)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setStringOption(Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;)V
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;->getValue()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;->getKey()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setStringOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public setSubtitleStyle(Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/tencent/vod/flutter/FTXTransformation;->transToTitleRenderModel(Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;)Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setSubtitleStyle(Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setToken(Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;)V
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->setPlayerToken(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public startPlayDrm(Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 3
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;->getLicenseUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;->getPlayUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/tencent/rtmp/TXPlayerDrmBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;->getDeviceCertificateUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;->getDeviceCertificateUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->setDeviceCertificateUrl(Ljava/lang/String;)Lcom/tencent/rtmp/TXPlayerDrmBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->startPlayDrm(Lcom/tencent/rtmp/TXPlayerDrmBuilder;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-long v0, p1

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->intMsgWith(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_1
    const-wide/16 v0, -0x65

    .line 52
    .line 53
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->intMsgWith(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public startPlayerVodPlay(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->setPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->startVodPlay(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    const/16 p1, -0x65

    .line 20
    .line 21
    return p1
.end method

.method public startPlayerVodPlayWithParams(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/rtmp/TXPlayInfoParams;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/rtmp/TXPlayInfoParams;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->startVodPlay(Lcom/tencent/rtmp/TXPlayInfoParams;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public startVodPlay(Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->startPlayerVodPlay(Ljava/lang/String;)I

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

.method public startVodPlayWithParams(Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;)V
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;->getAppId()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;->getFileId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;->getPsign()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->startPlayerVodPlayWithParams(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
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
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->stopPlay(Z)I

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->stopPlay(Z)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, -0x65

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mUIHandler:Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mPipManager:Lcom/tencent/vod/flutter/FTXPIPManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->getPlayerId()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/tencent/vod/flutter/FTXPIPManager;->exitPipByPlayerId(I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->releaseTXImageSprite()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->mHardwareDecodeFail:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "stopPlay target clear last img, player:"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "FTXVodPlayer"

    .line 61
    .line 62
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->clearTexture()V

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
