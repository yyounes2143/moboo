.class public Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TPMediaCodecManager"

.field private static codecNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mCodecList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->mCodecList:Landroid/util/SparseArray;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->codecNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native _onMediaCodecException(ILjava/lang/String;)V
.end method

.method private static native _onMediaCodecReady(ILjava/lang/String;)V
.end method

.method private static native _onMediaCodecReportEvent(II)V
.end method

.method private static native _onMediaDrmInfo(ILjava/lang/Object;)V
.end method

.method private static addCodecToList(ILcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->mCodecList:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public static createMediaCodec(Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->codecNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->codecNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->codecNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecAudioDecoder;-><init>(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecVideoDecoder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->addCodecToList(ILcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;)V

    .line 38
    .line 39
    .line 40
    return v0
.end method

.method public static flushMediaCodec(I)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string v0, "flushMediaCodec failed!"

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v1, p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-interface {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->flush()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method private static getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->mCodecList:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v0, "TPMediaCodecManager"

    .line 16
    .line 17
    const-string v1, "No such codec by id:"

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-static {v1, v0, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_0
    return-object v1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method public static getSDKVersion()I
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    return v0
.end method

.method public static initAudioMediaCodec(ILjava/lang/String;IIII)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "TPMediaCodecManager"

    .line 9
    .line 10
    const-string p1, "initAudioMediaCodec failed!"

    .line 11
    .line 12
    const/4 p2, 0x3

    .line 13
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    invoke-interface/range {p0 .. p5}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->initDecoder(Ljava/lang/String;IIII)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    invoke-interface {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->startDecoder()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static initVideoMediaCodec(ILjava/lang/String;IIILandroid/view/Surface;III)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "TPMediaCodecManager"

    .line 9
    .line 10
    const-string p1, "initVideoMediaCodec failed!"

    .line 11
    .line 12
    const/4 p2, 0x3

    .line 13
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    invoke-interface/range {p0 .. p8}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->initDecoder(Ljava/lang/String;IIILandroid/view/Surface;III)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    invoke-interface {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->startDecoder()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static onMediaCodecException(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->_onMediaCodecException(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static onMediaCodecReady(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->_onMediaCodecReady(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static onMediaCodecReportEvent(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->_onMediaCodecReportEvent(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static onMediaDrmInfo(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->_onMediaDrmInfo(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static receiveOneFrame(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string v0, "receiveOneFrame failed!"

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v1, p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->dequeueOutputBuffer()Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPFrameInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static releaseMediaCodec(I)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string v0, "releaseMediaCodec failed!"

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v1, p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->removeCodecFromList(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->release()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static releaseVideoFrame(IIZ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "releaseVideoFrame failed!"

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->releaseOutputBuffer(IZ)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method private static removeCodecFromList(I)V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->mCodecList:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public static sendOnePacket(I[BZJZ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "sendOnePacket failed!"

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    invoke-interface/range {p0 .. p5}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->decode([BZJZ)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static setCryptoInfo(II[I[I[B[BIII)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "setMediaCodecParamObject failed!"

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-interface/range {p0 .. p8}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->setCryptoInfo(I[I[I[B[BIII)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static setMediaCodecOperateRate(IF)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "setMediaCodecOperateRate failed!"

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    invoke-static {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->setOperateRate(F)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static setMediaCodecParamBool(IIZ)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "setMediaCodecParamBool failed!"

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->setParamBool(IZ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static setMediaCodecParamBytes(II[B)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "setMediaCodecParamBytes failed!"

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->setParamBytes(I[B)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static setMediaCodecParamInt(III)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "setMediaCodecParamInt failed!"

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->setParamInt(II)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static setMediaCodecParamLong(IIJ)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "setMediaCodecParamLong failed!"

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->setParamLong(IJ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static setMediaCodecParamObject(IILjava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "setMediaCodecParamObject failed!"

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->setParamObject(ILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static setMediaCodecParamString(IILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "setMediaCodecParamString failed!"

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-static {p2, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->setParamString(ILjava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static setMediaCodecSurface(ILandroid/view/Surface;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string p1, "setMediaCodecSurface failed!"

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    invoke-static {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    invoke-interface {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->setOutputSurface(Landroid/view/Surface;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static signalEndOfStream(I)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/TPMediaCodecManager;->getCodecById(I)Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "TPMediaCodecManager"

    .line 8
    .line 9
    const-string v0, "signalEndOfStream failed!"

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v1, p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-interface {p0}, Lcom/tencent/thumbplayer/tcmedia/core/decoder/ITPMediaCodecDecoder;->signalEndOfStream()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method
