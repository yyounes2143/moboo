.class public Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final FPS_DEFAULT:I = 0x1e

.field private static final FRAME_WAIT_TIME:J = 0x1388L

.field private static final RE_DRAW_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FTXEGLRender"


# instance fields
.field private frameInterval:F

.field private isReleased:Z

.field private mCurrentTime:J

.field private mDrawHandler:Landroid/os/Handler;

.field private mDrawHandlerThread:Landroid/os/HandlerThread;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLContextEncoder:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

.field private mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

.field private mEGLSavedContext:Landroid/opengl/EGLContext;

.field private mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

.field private mFps:I

.field private mHeight:I

.field private mInputSurface:Landroid/view/Surface;

.field private mIsFirstFrame:Z

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private mPreTime:J

.field private mRenderMode:J

.field private mStart:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/16 v0, 0x1e

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    .line 5
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 6
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 7
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 8
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 9
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 10
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    .line 11
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mStart:Z

    .line 13
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mPreTime:J

    const-wide/16 v1, 0x1

    .line 15
    iput-wide v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mRenderMode:J

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->frameInterval:F

    .line 17
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FTXEGLRender"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mDrawHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mDrawHandler:Landroid/os/Handler;

    .line 19
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->isReleased:Z

    .line 20
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mIsFirstFrame:Z

    .line 21
    iput p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mWidth:I

    .line 22
    iput p2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mHeight:I

    .line 23
    iput p3, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mFps:I

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p3

    div-float/2addr p1, p2

    float-to-double v0, p1

    const-wide v3, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v3

    double-to-float p2, v0

    sub-float/2addr p1, p2

    .line 24
    iput p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->frameInterval:F

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initFPs fps: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "video_interval: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->frameInterval:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mIsFirstFrame:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mIsFirstFrame:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->startDrawSurface()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3000

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "checkEglError: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "error: "

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "FTXEGLRender"

    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x1

    .line 42
    return p1
.end method

.method private eglSetup(Landroid/view/Surface;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x3038

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iput-object v3, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 11
    .line 12
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 13
    .line 14
    const-string v5, "FTXEGLRender"

    .line 15
    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    const-string v1, "unable to get EGL10 display"

    .line 19
    .line 20
    invoke-static {v5, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    const/4 v4, 0x2

    .line 25
    new-array v6, v4, [I

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    invoke-static {v3, v6, v2, v6, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    const-string v1, "unable to initialize EGL10"

    .line 35
    .line 36
    invoke-static {v5, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    const/16 v3, 0xf

    .line 41
    .line 42
    new-array v9, v3, [I

    .line 43
    .line 44
    fill-array-data v9, :array_0

    .line 45
    .line 46
    .line 47
    new-array v14, v7, [I

    .line 48
    .line 49
    const/4 v13, 0x1

    .line 50
    new-array v11, v13, [Landroid/opengl/EGLConfig;

    .line 51
    .line 52
    iget-object v8, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 53
    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v15, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    invoke-static/range {v8 .. v15}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    const-string v1, "eglChooseConfig error"

    .line 64
    .line 65
    invoke-static {v5, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return v2

    .line 69
    :cond_2
    const/16 v3, 0x3098

    .line 70
    .line 71
    filled-new-array {v3, v4, v1}, [I

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 76
    .line 77
    aget-object v6, v11, v2

    .line 78
    .line 79
    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 80
    .line 81
    invoke-static {v4, v6, v8, v3, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iput-object v3, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 86
    .line 87
    const-string v3, "eglCreateContext"

    .line 88
    .line 89
    invoke-direct {v0, v3}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->checkEglError(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    iget-object v3, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 93
    .line 94
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 95
    .line 96
    if-ne v3, v4, :cond_3

    .line 97
    .line 98
    const-string v1, "null context2"

    .line 99
    .line 100
    invoke-static {v5, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return v2

    .line 104
    :cond_3
    filled-new-array {v1}, [I

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v3, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 109
    .line 110
    aget-object v4, v11, v2

    .line 111
    .line 112
    move-object/from16 v6, p1

    .line 113
    .line 114
    invoke-static {v3, v4, v6, v1, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 119
    .line 120
    const-string v1, "eglCreateWindowSurface"

    .line 121
    .line 122
    invoke-direct {v0, v1}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->checkEglError(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 126
    .line 127
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 128
    .line 129
    if-ne v1, v3, :cond_4

    .line 130
    .line 131
    const-string v1, "surface was null"

    .line 132
    .line 133
    invoke-static {v5, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return v2

    .line 137
    :cond_4
    return v7

    .line 138
    nop

    .line 139
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x8
        0x3026
        0x8
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private eglUninstall(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->makeCurrent(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p1, "FTXEGLRender"

    .line 9
    .line 10
    const-string v0, "makeCurrent error"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mTextureRender:Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->deleteTexture()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->releaseEgl()V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mInputSurface:Landroid/view/Surface;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method private releaseEgl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 8
    .line 9
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 10
    .line 11
    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 15
    .line 16
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 26
    .line 27
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 39
    .line 40
    .line 41
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 44
    .line 45
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 48
    .line 49
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 52
    .line 53
    return-void
.end method

.method private resetSavedEnvironment()V
    .locals 1

    .line 1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 4
    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    .line 10
    .line 11
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 14
    .line 15
    return-void
.end method

.method private restoreEglEnvironment()V
    .locals 5

    .line 1
    const-string v0, "FTXEGLRender"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 4
    .line 5
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 6
    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 10
    .line 11
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 12
    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    .line 16
    .line 17
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/16 v3, 0x3059

    .line 30
    .line 31
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 36
    .line 37
    invoke-virtual {v4, v1}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :catch_0
    move-exception v1

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 72
    .line 73
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v3, "Restore failed: EGL error 0x"

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 108
    .line 109
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 110
    .line 111
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 112
    .line 113
    invoke-static {v1, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    const-string v1, "No valid EGL state to restore"

    .line 118
    .line 119
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 123
    .line 124
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 125
    .line 126
    if-eq v1, v2, :cond_2

    .line 127
    .line 128
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 129
    .line 130
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 131
    .line 132
    invoke-static {v1, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    :cond_2
    :goto_1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 138
    .line 139
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 140
    .line 141
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    .line 142
    .line 143
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    .line 144
    .line 145
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 148
    .line 149
    return-void

    .line 150
    :goto_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v3, "Critical restore error: "

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    .line 170
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 171
    .line 172
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 173
    .line 174
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 175
    .line 176
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    .line 177
    .line 178
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    .line 179
    .line 180
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 181
    .line 182
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 183
    .line 184
    return-void

    .line 185
    :goto_3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 186
    .line 187
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 188
    .line 189
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 190
    .line 191
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    .line 192
    .line 193
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    .line 194
    .line 195
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 196
    .line 197
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 198
    .line 199
    throw v0
.end method

.method private saveCurrentEglEnvironment()V
    .locals 4

    .line 1
    const-string v0, "FTXEGLRender"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 8
    .line 9
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 14
    .line 15
    const/16 v1, 0x3059

    .line 16
    .line 17
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    .line 22
    .line 23
    const/16 v1, 0x305a

    .line 24
    .line 25
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 32
    .line 33
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 34
    .line 35
    if-eq v1, v2, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 38
    .line 39
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    const-string v1, "Saving invalid EGL state"

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "Save EGL error: "

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->resetSavedEnvironment()V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method private setup(Z)V
    .locals 5

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mViewWidth:I

    .line 4
    .line 5
    iget v2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mViewHeight:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mTextureRender:Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->surfaceCreated()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mTextureRender:Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

    .line 16
    .line 17
    iget v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mWidth:I

    .line 18
    .line 19
    iget v2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mHeight:I

    .line 20
    .line 21
    iget-wide v3, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mRenderMode:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->updateSizeAndRenderMode(IIJ)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "textureID="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mTextureRender:Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->getTextureID()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "FTXEGLRender"

    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mInputSurface:Landroid/view/Surface;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void

    .line 62
    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/SurfaceTexture;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mTextureRender:Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->getTextureID()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 74
    .line 75
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mViewWidth:I

    .line 76
    .line 77
    iget v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mViewHeight:I

    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Landroid/view/Surface;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 90
    .line 91
    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mInputSurface:Landroid/view/Surface;

    .line 95
    .line 96
    return-void
.end method

.method private declared-synchronized startDrawSurface()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mStart:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "FTXEGLRender"

    .line 7
    .line 8
    const-string v1, "end....... "

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->restoreEglEnvironment()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_4

    .line 20
    :catchall_1
    move-exception v0

    .line 21
    goto :goto_3

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->saveCurrentEglEnvironment()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->makeCurrent(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "FTXEGLRender"

    .line 35
    .line 36
    const-string v1, "makeCurrent error"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    .line 40
    .line 41
    :try_start_3
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->restoreEglEnvironment()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :cond_1
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iput-wide v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mCurrentTime:J

    .line 51
    .line 52
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->drawImage()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->swapBuffers()Z

    .line 61
    .line 62
    .line 63
    iget-wide v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mCurrentTime:J

    .line 64
    .line 65
    iput-wide v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mPreTime:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    .line 67
    :goto_0
    :try_start_5
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->restoreEglEnvironment()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_1
    :try_start_6
    const-string v1, "FTXEGLRender"

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v3, "startDrawSurface error: "

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :goto_2
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :goto_3
    :try_start_7
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->restoreEglEnvironment()V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :goto_4
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 101
    throw v0
.end method


# virtual methods
.method public clearSurfaceIfCan()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mTextureRender:Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->cleanDrawCache()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public drawImage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mTextureRender:Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->drawFrame()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mInputSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public initOpengl(Landroid/view/Surface;)Z
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->initOpengl(Landroid/view/Surface;Z)Z

    move-result p1

    return p1
.end method

.method public initOpengl(Landroid/view/Surface;Z)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initOpengl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FTXEGLRender"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->isReleased:Z

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mIsFirstFrame:Z

    .line 4
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->saveCurrentEglEnvironment()V

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->eglSetup(Landroid/view/Surface;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    const-string p1, "eglSetup error"

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, v2}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->makeCurrent(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    const-string p1, "makeCurrent error"

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->releaseEgl()V

    .line 10
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->restoreEglEnvironment()V

    return v0

    .line 11
    :cond_3
    invoke-direct {p0, p2}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->setup(Z)V

    .line 12
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->restoreEglEnvironment()V

    return v2
.end method

.method public makeCurrent(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "eglMakeCurrent failed"

    .line 3
    .line 4
    const-string v2, "FTXEGLRender"

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    .line 13
    .line 14
    invoke-static {p1, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 29
    .line 30
    invoke-static {p1, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    const/4 p1, 0x1

    .line 41
    return p1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mStart:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mDrawHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$1;-><init>(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public declared-synchronized pauseRender()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mStart:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public refreshRender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mDrawHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$2;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$2;-><init>(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public declared-synchronized resumeRender()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mStart:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public setViewPortSize(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mViewWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mViewHeight:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mTextureRender:Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->setViewPortSize(II)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public startRender()V
    .locals 2

    .line 1
    const-string v0, "called start render"

    .line 2
    .line 3
    const-string v1, "FTXEGLRender"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mDrawHandlerThread:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "old draw thread is alive, stop first"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mDrawHandlerThread:Landroid/os/HandlerThread;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mDrawHandlerThread:Landroid/os/HandlerThread;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroid/os/Handler;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mDrawHandlerThread:Landroid/os/HandlerThread;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mDrawHandler:Landroid/os/Handler;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mStart:Z

    .line 51
    .line 52
    return-void
.end method

.method public declared-synchronized stopRender()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->stopRender(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopRender(Z)V
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->isReleased:Z

    if-eqz v0, :cond_0

    .line 4
    const-string p1, "FTXEGLRender"

    const-string v0, "stopRender return, already released"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    const-string v0, "FTXEGLRender"

    const-string v1, "stopRender"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mStart:Z

    .line 8
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->saveCurrentEglEnvironment()V

    .line 9
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 10
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->eglUninstall(Z)V

    .line 11
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mDrawHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    if-nez v0, :cond_1

    .line 12
    const-string p1, "FTXEGLRender"

    const-string v0, "restoreEglEnvironment"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->restoreEglEnvironment()V

    :cond_1
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->isReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public swapBuffers()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "eglSwapBuffers"

    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->checkEglError(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    return v0
.end method

.method public updateSizeAndRenderMode(IIJ)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mHeight:I

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mRenderMode:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->mTextureRender:Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->updateSizeAndRenderMode(IIJ)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p1, "FTXEGLRender"

    .line 16
    .line 17
    const-string p2, "mTextureRender is null"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
