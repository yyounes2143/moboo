.class public Lcom/tencent/vod/flutter/live/egl/EGL14Helper;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/live/egl/EGLHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/vod/flutter/live/egl/EGLHelper<",
        "Landroid/opengl/EGLContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_LIST_FOR_OFFSCREEN_SURFACE:[I

.field private static final ATTRIBUTE_LIST_FOR_SURFACE:[I

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final GLES_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EGL14Helper"


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

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
    sput-object v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->ATTRIBUTE_LIST_FOR_SURFACE:[I

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
    sput-object v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->ATTRIBUTE_LIST_FOR_OFFSCREEN_SURFACE:[I

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
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
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3142
        0x1
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
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 6
    .line 7
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 10
    .line 11
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 14
    .line 15
    iput p1, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mWidth:I

    .line 16
    .line 17
    iput p2, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mHeight:I

    .line 18
    .line 19
    return-void
.end method

.method private checkEGLError()V
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
    const-string v2, "EGL error:"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ", code: 0x"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "EGL14Helper"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public static createEGLSurface(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/vod/flutter/live/egl/EGL14Helper;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;

    .line 2
    .line 3
    invoke-direct {v0, p3, p4}, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;-><init>(II)V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->initialize(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;Landroid/view/Surface;)Z

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

.method private initialize(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;Landroid/view/Surface;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    iput-object v4, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 13
    .line 14
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 15
    .line 16
    const-string v6, "EGL14Helper"

    .line 17
    .line 18
    if-ne v4, v5, :cond_0

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->checkEGLError()V

    .line 21
    .line 22
    .line 23
    const-string v4, "unable to get EGL14 display"

    .line 24
    .line 25
    invoke-static {v6, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v4, 0x2

    .line 29
    new-array v5, v4, [I

    .line 30
    .line 31
    iget-object v7, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    invoke-static {v7, v5, v3, v5, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    iput-object v5, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->checkEGLError()V

    .line 44
    .line 45
    .line 46
    const-string v5, "unable to initialize EGL14"

    .line 47
    .line 48
    invoke-static {v6, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iput-object v1, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/4 v14, 0x1

    .line 57
    new-array v12, v14, [Landroid/opengl/EGLConfig;

    .line 58
    .line 59
    new-array v15, v8, [I

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    sget-object v1, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->ATTRIBUTE_LIST_FOR_OFFSCREEN_SURFACE:[I

    .line 64
    .line 65
    :goto_0
    move-object v10, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    sget-object v1, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->ATTRIBUTE_LIST_FOR_SURFACE:[I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_1
    iget-object v9, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 71
    .line 72
    const/4 v13, 0x0

    .line 73
    const/16 v16, 0x0

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    invoke-static/range {v9 .. v16}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    return v3

    .line 83
    :cond_4
    aget-object v1, v12, v3

    .line 84
    .line 85
    iput-object v1, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 86
    .line 87
    :goto_2
    if-nez p2, :cond_5

    .line 88
    .line 89
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    move-object/from16 v1, p2

    .line 93
    .line 94
    :goto_3
    const/16 v5, 0x3098

    .line 95
    .line 96
    const/16 v6, 0x3038

    .line 97
    .line 98
    filled-new-array {v5, v4, v6}, [I

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v5, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 103
    .line 104
    iget-object v7, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 105
    .line 106
    invoke-static {v5, v7, v1, v4, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v1, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 111
    .line 112
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 113
    .line 114
    if-ne v1, v4, :cond_6

    .line 115
    .line 116
    invoke-direct {v0}, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->checkEGLError()V

    .line 117
    .line 118
    .line 119
    return v3

    .line 120
    :cond_6
    if-nez v2, :cond_7

    .line 121
    .line 122
    iget v1, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mWidth:I

    .line 123
    .line 124
    const/16 v2, 0x3056

    .line 125
    .line 126
    iget v4, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mHeight:I

    .line 127
    .line 128
    const/16 v5, 0x3057

    .line 129
    .line 130
    filled-new-array {v5, v1, v2, v4, v6}, [I

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v2, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 135
    .line 136
    iget-object v4, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 137
    .line 138
    invoke-static {v2, v4, v1, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iput-object v1, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_7
    filled-new-array {v6}, [I

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v4, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 150
    .line 151
    iget-object v5, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 152
    .line 153
    invoke-static {v4, v5, v2, v1, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 158
    .line 159
    :goto_4
    invoke-direct {v0}, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->checkEGLError()V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 163
    .line 164
    iget-object v2, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 165
    .line 166
    iget-object v4, v0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 167
    .line 168
    invoke-static {v1, v2, v2, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_8

    .line 173
    .line 174
    invoke-direct {v0}, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->checkEGLError()V

    .line 175
    .line 176
    .line 177
    return v3

    .line 178
    :cond_8
    return v8
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

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
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 15
    .line 16
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 23
    .line 24
    .line 25
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 30
    .line 31
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 38
    .line 39
    .line 40
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 43
    .line 44
    :cond_1
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 50
    .line 51
    .line 52
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 55
    .line 56
    return-void
.end method

.method public getConfig()Landroid/opengl/EGLConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/opengl/EGLContext;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public bridge synthetic getContext()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->getContext()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 4
    .line 5
    const-string v2, "EGL14Helper"

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "NOTE: makeCurrent w/o display"

    .line 10
    .line 11
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 19
    .line 20
    invoke-static {v0, v1, v1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->checkEGLError()V

    .line 27
    .line 28
    .line 29
    const-string v0, "eglMakeCurrent failed"

    .line 30
    .line 31
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public unmakeCurrent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/egl/EGL14Helper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

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
    return-void
.end method
