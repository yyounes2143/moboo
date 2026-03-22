.class public Lcom/tencent/vod/flutter/live/egl/EGL10Helper;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/live/egl/EGLHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/vod/flutter/live/egl/EGLHelper<",
        "Ljavax/microedition/khronos/egl/EGLContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTES_FOR_OFFSCREEN_SURFACE:[I

.field private static final ATTRIBUTES_FOR_SURFACE:[I

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final TAG:Ljava/lang/String; = "EGL10Helper"


# instance fields
.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->ATTRIBUTES_FOR_OFFSCREEN_SURFACE:[I

    .line 9
    .line 10
    const/16 v0, 0x13

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->ATTRIBUTES_FOR_SURFACE:[I

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        0x3033
        0x1
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3038
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 4
        0x3033
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method private constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 7
    .line 8
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 11
    .line 12
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 15
    .line 16
    iput p1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mWidth:I

    .line 17
    .line 18
    iput p2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mHeight:I

    .line 19
    .line 20
    return-void
.end method

.method public static createEGLSurface(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/vod/flutter/live/egl/EGL10Helper;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;

    .line 2
    .line 3
    invoke-direct {v0, p3, p4}, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;-><init>(II)V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->initialize(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method private initialize(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;)Z
    .locals 9

    .line 1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 8
    .line 9
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v3, v2, [I

    .line 21
    .line 22
    invoke-interface {v1, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    new-array v8, v0, [I

    .line 30
    .line 31
    new-array v6, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 32
    .line 33
    if-nez p3, :cond_0

    .line 34
    .line 35
    sget-object p1, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->ATTRIBUTES_FOR_OFFSCREEN_SURFACE:[I

    .line 36
    .line 37
    :goto_0
    move-object v5, p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    sget-object p1, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->ATTRIBUTES_FOR_SURFACE:[I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    iget-object v3, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 48
    .line 49
    .line 50
    aget-object p1, v6, v1

    .line 51
    .line 52
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 56
    .line 57
    :goto_2
    const/16 p1, 0x3098

    .line 58
    .line 59
    const/16 v3, 0x3038

    .line 60
    .line 61
    filled-new-array {p1, v2, v3}, [I

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 66
    .line 67
    if-nez p2, :cond_2

    .line 68
    .line 69
    move-object p2, v2

    .line 70
    :cond_2
    iget-object v4, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 71
    .line 72
    iget-object v5, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 73
    .line 74
    iget-object v6, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 75
    .line 76
    invoke-interface {v4, v5, v6, p2, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 81
    .line 82
    if-ne p1, v2, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->checkEglError()V

    .line 85
    .line 86
    .line 87
    return v1

    .line 88
    :cond_3
    iget p1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mWidth:I

    .line 89
    .line 90
    const/16 p2, 0x3056

    .line 91
    .line 92
    iget v2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mHeight:I

    .line 93
    .line 94
    const/16 v4, 0x3057

    .line 95
    .line 96
    filled-new-array {v4, p1, p2, v2, v3}, [I

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p3, :cond_4

    .line 101
    .line 102
    iget-object p2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 103
    .line 104
    iget-object p3, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 107
    .line 108
    invoke-interface {p2, p3, v2, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 116
    .line 117
    iget-object p2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 118
    .line 119
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    invoke-interface {p1, p2, v2, p3, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 127
    .line 128
    :goto_3
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 129
    .line 130
    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 131
    .line 132
    if-ne p1, p2, :cond_5

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->checkEglError()V

    .line 135
    .line 136
    .line 137
    return v1

    .line 138
    :cond_5
    iget-object p2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 139
    .line 140
    iget-object p3, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 143
    .line 144
    invoke-interface {p2, p3, p1, p1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_6

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->checkEglError()V

    .line 151
    .line 152
    .line 153
    return v1

    .line 154
    :cond_6
    return v0
.end method


# virtual methods
.method public checkEglError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3000

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "EGL error: 0x"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "EGL10Helper"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 8
    .line 9
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 10
    .line 11
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 12
    .line 13
    invoke-interface {v2, v0, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 17
    .line 18
    if-eq v0, v3, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 23
    .line 24
    invoke-interface {v2, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 25
    .line 26
    .line 27
    iput-object v3, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 30
    .line 31
    if-eq v0, v4, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 36
    .line 37
    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 38
    .line 39
    .line 40
    iput-object v4, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->checkEglError()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iput-object v1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 53
    .line 54
    return-void
.end method

.method public bridge synthetic getContext()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->checkEglError()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->checkEglError()V

    .line 12
    .line 13
    .line 14
    return v0
.end method

.method public unmakeCurrent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/egl/EGL10Helper;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 8
    .line 9
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 10
    .line 11
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 12
    .line 13
    invoke-interface {v1, v0, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
