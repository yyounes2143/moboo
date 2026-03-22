.class public Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXV2LiveRender"

.field private static final WAIT_FRAME_DURATION_MILL:J = 0x7d0L

.field private static final WHAT_DESTROY:I = 0x3

.field private static final WHAT_DRAW_FRAME:I = 0x1

.field private static final WHAT_OFFER_FRAME:I = 0x5

.field private static final WHAT_START_DRAW:I = 0x6

.field private static final WHAT_STOP:I = 0x4

.field private static final WHAT_UN_INIT:I = 0x2

.field private static final mRenderId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final mCubeBuffer:Ljava/nio/FloatBuffer;

.field private final mDataPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawCondition:Ljava/util/concurrent/locks/Condition;

.field private final mDrawLock:Ljava/util/concurrent/locks/Lock;

.field private mDrawServiceFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

.field private mImageFilter:Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;

.field private mIsDestroyed:Z

.field private volatile mIsInDrawing:Z

.field private mLastInputFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

.field private mLastOutputFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

.field private final mOptHandler:Landroid/os/Handler;

.field private final mOptHandlerThread:Landroid/os/HandlerThread;

.field private mRenderService:Ljava/util/concurrent/ExecutorService;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

.field private final mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mTextureBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mRenderId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mRenderService:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDataPool:Ljava/util/Queue;

    .line 17
    .line 18
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDrawLock:Ljava/util/concurrent/locks/Lock;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDrawCondition:Ljava/util/concurrent/locks/Condition;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mIsInDrawing:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mIsDestroyed:Z

    .line 35
    .line 36
    new-instance v2, Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/tencent/vod/flutter/live/render/FTXSize;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurfaceFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 42
    .line 43
    new-instance v2, Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 44
    .line 45
    invoke-direct {v2}, Lcom/tencent/vod/flutter/live/render/FTXSize;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mLastInputFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 49
    .line 50
    new-instance v2, Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 51
    .line 52
    invoke-direct {v2}, Lcom/tencent/vod/flutter/live/render/FTXSize;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mLastOutputFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 56
    .line 57
    new-instance v2, Landroid/os/HandlerThread;

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "FTXV2LiveRender"

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    sget-object v4, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mRenderId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mOptHandlerThread:Landroid/os/HandlerThread;

    .line 86
    .line 87
    sget-object v3, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->CUBE:[F

    .line 88
    .line 89
    array-length v4, v3

    .line 90
    mul-int/lit8 v4, v4, 0x4

    .line 91
    .line 92
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iput-object v4, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mCubeBuffer:Ljava/nio/FloatBuffer;

    .line 109
    .line 110
    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    .line 116
    .line 117
    sget-object v3, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->TEXTURE:[F

    .line 118
    .line 119
    array-length v4, v3

    .line 120
    mul-int/lit8 v4, v4, 0x4

    .line 121
    .line 122
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    iput-object v4, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 139
    .line 140
    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    .line 146
    .line 147
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 148
    .line 149
    new-instance v1, Landroid/view/Surface;

    .line 150
    .line 151
    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 152
    .line 153
    .line 154
    iput-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurface:Landroid/view/Surface;

    .line 155
    .line 156
    new-instance p1, Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 157
    .line 158
    invoke-direct {p1, v0, v0}, Lcom/tencent/vod/flutter/live/render/FTXSize;-><init>(II)V

    .line 159
    .line 160
    .line 161
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurfaceFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 164
    .line 165
    .line 166
    new-instance p1, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;

    .line 167
    .line 168
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-direct {p1, p0, v0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;-><init>(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;Landroid/os/Looper;)V

    .line 173
    .line 174
    .line 175
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mOptHandler:Landroid/os/Handler;

    .line 176
    .line 177
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mIsDestroyed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mIsInDrawing:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1000(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->startDrawInner()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mOptHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->onDrawFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->unInitEGL()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->stopInner()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDrawServiceFuture:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->destroyInner()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDrawLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDataPool:Ljava/util/Queue;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDrawCondition:Ljava/util/concurrent/locks/Condition;

    .line 2
    .line 3
    return-object p0
.end method

.method private destroyInner()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->stopInner()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mIsDestroyed:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mRenderService:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDrawServiceFuture:Ljava/util/concurrent/Future;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->unInitEGL()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_2

    .line 26
    :catch_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mRenderService:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mOptHandlerThread:Landroid/os/HandlerThread;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDataPool:Ljava/util/Queue;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    const-string v2, "FTXV2LiveRender"

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "render service wait error:"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mRenderService:Ljava/util/concurrent/ExecutorService;

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mRenderService:Ljava/util/concurrent/ExecutorService;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mOptHandlerThread:Landroid/os/HandlerThread;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDataPool:Ljava/util/Queue;

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_2
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mRenderService:Ljava/util/concurrent/ExecutorService;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mOptHandlerThread:Landroid/os/HandlerThread;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDataPool:Ljava/util/Queue;

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 91
    .line 92
    .line 93
    throw v1
.end method

.method private initEGL(Ljava/lang/Object;)V
    .locals 4

    .line 1
    instance-of v0, p1, Ljavax/microedition/khronos/egl/EGLContext;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "FTXV2LiveRender"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Ljavax/microedition/khronos/egl/EGLContext;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurface:Landroid/view/Surface;

    .line 12
    .line 13
    invoke-static {v1, p1, v0, v3, v3}, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->createEGLSurface(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/vod/flutter/live/egl/EGL10Helper;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

    .line 18
    .line 19
    const-string p1, "create EGL10Helper done"

    .line 20
    .line 21
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    check-cast p1, Landroid/opengl/EGLContext;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurface:Landroid/view/Surface;

    .line 28
    .line 29
    invoke-static {v1, p1, v0, v3, v3}, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->createEGLSurface(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/vod/flutter/live/egl/EGL14Helper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

    .line 34
    .line 35
    const-string p1, "create EGL14Helper done"

    .line 36
    .line 37
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    const-string p1, "unSupport eglContext!pls check your params"

    .line 45
    .line 46
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-interface {p1}, Lcom/tencent/vod/flutter/live/egl/EGLHelper;->makeCurrent()V

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-direct {p1, v0}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;-><init>(Z)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mImageFilter:Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->init()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private declared-synchronized onDrawFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    .line 3
    .line 4
    iget v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->textureId:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    const-string v2, "FTXV2LiveRender"

    .line 11
    .line 12
    const-string v3, "start create mEglHelper"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->eglContext10:Ljavax/microedition/khronos/egl/EGLContext;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->eglContext14:Landroid/opengl/EGLContext;

    .line 23
    .line 24
    :goto_0
    invoke-direct {p0, v2}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->initEGL(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    move-object p1, v0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const-string p1, "FTXV2LiveRender"

    .line 37
    .line 38
    const-string v0, "unSupport eglContext!pls check your params"

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mLastInputFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 46
    .line 47
    iget v2, v0, Lcom/tencent/vod/flutter/live/render/FTXSize;->width:I

    .line 48
    .line 49
    iget v6, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->width:I

    .line 50
    .line 51
    if-ne v2, v6, :cond_3

    .line 52
    .line 53
    iget v0, v0, Lcom/tencent/vod/flutter/live/render/FTXSize;->height:I

    .line 54
    .line 55
    iget v2, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->height:I

    .line 56
    .line 57
    if-ne v0, v2, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mLastOutputFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 60
    .line 61
    iget v2, v0, Lcom/tencent/vod/flutter/live/render/FTXSize;->width:I

    .line 62
    .line 63
    iget-object v3, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurfaceFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 64
    .line 65
    iget v4, v3, Lcom/tencent/vod/flutter/live/render/FTXSize;->width:I

    .line 66
    .line 67
    if-ne v2, v4, :cond_3

    .line 68
    .line 69
    iget v0, v0, Lcom/tencent/vod/flutter/live/render/FTXSize;->height:I

    .line 70
    .line 71
    iget v2, v3, Lcom/tencent/vod/flutter/live/render/FTXSize;->height:I

    .line 72
    .line 73
    if-eq v0, v2, :cond_4

    .line 74
    .line 75
    :cond_3
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 76
    .line 77
    sget-object v4, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_180:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 78
    .line 79
    iget v7, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->height:I

    .line 80
    .line 81
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurfaceFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 82
    .line 83
    iget v8, v0, Lcom/tencent/vod/flutter/live/render/FTXSize;->width:I

    .line 84
    .line 85
    iget v9, v0, Lcom/tencent/vod/flutter/live/render/FTXSize;->height:I

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    invoke-static/range {v3 .. v9}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->calcCubeAndTextureBuffer(Landroid/widget/ImageView$ScaleType;Lcom/tencent/vod/flutter/live/render/FTXRotation;ZIIII)Landroid/util/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 93
    .line 94
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->width:I

    .line 95
    .line 96
    iget v4, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->height:I

    .line 97
    .line 98
    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 99
    .line 100
    .line 101
    new-instance v2, Landroid/view/Surface;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 104
    .line 105
    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 106
    .line 107
    .line 108
    iput-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurface:Landroid/view/Surface;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mCubeBuffer:Ljava/nio/FloatBuffer;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mCubeBuffer:Ljava/nio/FloatBuffer;

    .line 116
    .line 117
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v3, [F

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 130
    .line 131
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, [F

    .line 134
    .line 135
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 136
    .line 137
    .line 138
    new-instance v0, Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 139
    .line 140
    iget v2, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->width:I

    .line 141
    .line 142
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->height:I

    .line 143
    .line 144
    invoke-direct {v0, v2, v3}, Lcom/tencent/vod/flutter/live/render/FTXSize;-><init>(II)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mLastInputFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 148
    .line 149
    new-instance v0, Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 150
    .line 151
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurfaceFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 152
    .line 153
    iget v3, v2, Lcom/tencent/vod/flutter/live/render/FTXSize;->width:I

    .line 154
    .line 155
    iget v2, v2, Lcom/tencent/vod/flutter/live/render/FTXSize;->height:I

    .line 156
    .line 157
    invoke-direct {v0, v3, v2}, Lcom/tencent/vod/flutter/live/render/FTXSize;-><init>(II)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mLastOutputFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurfaceFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 163
    .line 164
    iget v2, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->width:I

    .line 165
    .line 166
    iput v2, v0, Lcom/tencent/vod/flutter/live/render/FTXSize;->width:I

    .line 167
    .line 168
    iget p1, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->height:I

    .line 169
    .line 170
    iput p1, v0, Lcom/tencent/vod/flutter/live/render/FTXSize;->height:I

    .line 171
    .line 172
    :cond_4
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

    .line 173
    .line 174
    invoke-interface {p1}, Lcom/tencent/vod/flutter/live/egl/EGLHelper;->makeCurrent()V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mSurfaceFTXSize:Lcom/tencent/vod/flutter/live/render/FTXSize;

    .line 178
    .line 179
    iget v0, p1, Lcom/tencent/vod/flutter/live/render/FTXSize;->width:I

    .line 180
    .line 181
    iget p1, p1, Lcom/tencent/vod/flutter/live/render/FTXSize;->height:I

    .line 182
    .line 183
    const/4 v2, 0x0

    .line 184
    invoke-static {v2, v2, v0, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 185
    .line 186
    .line 187
    const p1, 0x8d40

    .line 188
    .line 189
    .line 190
    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 191
    .line 192
    .line 193
    const/high16 p1, 0x3f800000    # 1.0f

    .line 194
    .line 195
    const/4 v0, 0x0

    .line 196
    invoke-static {v0, v0, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 197
    .line 198
    .line 199
    const/16 p1, 0x4100

    .line 200
    .line 201
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mImageFilter:Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;

    .line 205
    .line 206
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mCubeBuffer:Ljava/nio/FloatBuffer;

    .line 207
    .line 208
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 209
    .line 210
    invoke-virtual {p1, v1, v0, v2}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

    .line 214
    .line 215
    invoke-interface {p1}, Lcom/tencent/vod/flutter/live/egl/EGLHelper;->swapBuffers()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .line 217
    .line 218
    monitor-exit p0

    .line 219
    return-void

    .line 220
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    throw p1
.end method

.method private startDrawInner()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mRenderService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mIsInDrawing:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mRenderService:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    new-instance v1, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;-><init>(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDrawServiceFuture:Ljava/util/concurrent/Future;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    const-string v0, "FTXV2LiveRender"

    .line 30
    .line 31
    const-string v1, "render service is already shutdown, please reCreated it"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private stopInner()V
    .locals 2

    .line 1
    const-string v0, "FTXV2LiveRender"

    .line 2
    .line 3
    const-string v1, "start stop live render"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDrawLock:Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mIsInDrawing:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDataPool:Ljava/util/Queue;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDrawCondition:Ljava/util/concurrent/locks/Condition;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mDrawLock:Ljava/util/concurrent/locks/Lock;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private unInitEGL()V
    .locals 2

    .line 1
    const-string v0, "FTXV2LiveRender"

    .line 2
    .line 3
    const-string v1, "start unInitEGL"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mImageFilter:Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->destroy()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mImageFilter:Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/tencent/vod/flutter/live/egl/EGLHelper;->unmakeCurrent()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/tencent/vod/flutter/live/egl/EGLHelper;->destroy()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mEglHelper:Lcom/tencent/vod/flutter/live/egl/EGLHelper;

    .line 31
    .line 32
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mOptHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isDrawing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mIsInDrawing:Z

    .line 2
    .line 3
    return v0
.end method

.method public startDraw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mOptHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public stopRender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mOptHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public updateFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mIsInDrawing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Message;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->mOptHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
