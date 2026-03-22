.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateCallBackToNative;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$ScreenRefreshRateChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TPScreenRefreshRateCallBack"


# instance fields
.field private mNativeContext:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateCallBackToNative;->mNativeContext:J

    .line 5
    .line 6
    return-void
.end method

.method private native _onScreenRefreshRateChanged(F)V
.end method

.method private getNativeContext()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateCallBackToNative;->mNativeContext:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private registerCallback()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->addListener(Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$ScreenRefreshRateChangedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private unregisterCallback()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->removeListener(Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$ScreenRefreshRateChangedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onScreenRefreshRateChanged(F)V
    .locals 3

    .line 1
    const-string v0, "onScreenRefreshRateChanged refreshRate:"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const-string v2, "TPScreenRefreshRateCallBack"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateCallBackToNative;->_onScreenRefreshRateChanged(F)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
