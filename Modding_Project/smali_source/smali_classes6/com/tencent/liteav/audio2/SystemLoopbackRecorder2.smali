.class public Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2$Recorder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemLoopbackRecorder2"

.field private static final mLock:Ljava/lang/Object;

.field private static mMediaProjection:Landroid/media/projection/MediaProjection;

.field private static volatile mNativeSystemLoopbackRecorder:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sput-wide p1, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->mNativeSystemLoopbackRecorder:J

    .line 5
    .line 6
    return-void
.end method

.method private static native nativeSetMediaProjectionSession(JLandroid/media/projection/MediaProjection;)V
.end method

.method public static notifyMediaProjectionState(Landroid/media/projection/MediaProjection;)V
    .locals 4

    .line 1
    const-string v0, "SystemLoopbackRecorder2"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Received MediaProjection state "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v2

    .line 16
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    sput-object p0, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 32
    .line 33
    invoke-static {}, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->setMediaProjectionSession()V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public static setMediaProjectionSession()V
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v1, "SystemLoopbackRecorder2"

    .line 9
    .line 10
    const-string v2, "MediaProjection is null."

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-wide v0, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->mNativeSystemLoopbackRecorder:J

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-wide v0, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->mNativeSystemLoopbackRecorder:J

    .line 25
    .line 26
    sget-object v2, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->nativeSetMediaProjectionSession(JLandroid/media/projection/MediaProjection;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method


# virtual methods
.method public getMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 2
    .line 3
    return-object v0
.end method

.method public releaseNativeSystemLoopbackRecorder()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sput-wide v0, Lcom/tencent/liteav/audio2/SystemLoopbackRecorder2;->mNativeSystemLoopbackRecorder:J

    .line 4
    .line 5
    return-void
.end method
