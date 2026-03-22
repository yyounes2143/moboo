.class public Lcom/tencent/vod/flutter/live/render/FTXProgram;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final INVALID_PROGRAM_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Program"


# instance fields
.field private final mFragmentShader:Ljava/lang/String;

.field private mProgramId:I

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXProgram;->mVertexShader:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/vod/flutter/live/render/FTXProgram;->mFragmentShader:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/tencent/vod/flutter/live/render/FTXProgram;->mProgramId:I

    .line 10
    .line 11
    return-void
.end method

.method private loadShader(Ljava/lang/String;I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x8b81

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p2, p1, v0, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 19
    .line 20
    .line 21
    aget p1, v0, v1

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const-string p1, "glCompileShader"

    .line 26
    .line 27
    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->checkGlError(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    return p2
.end method


# virtual methods
.method public build()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXProgram;->mVertexShader:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0x8b31

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Lcom/tencent/vod/flutter/live/render/FTXProgram;->loadShader(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXProgram;->mFragmentShader:Ljava/lang/String;

    .line 14
    .line 15
    const v2, 0x8b30

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1, v2}, Lcom/tencent/vod/flutter/live/render/FTXProgram;->loadShader(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    new-array v3, v3, [I

    .line 40
    .line 41
    const v4, 0x8b82

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-static {v2, v4, v3, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 46
    .line 47
    .line 48
    aget v3, v3, v5

    .line 49
    .line 50
    if-gtz v3, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 57
    .line 58
    .line 59
    iput v2, p0, Lcom/tencent/vod/flutter/live/render/FTXProgram;->mProgramId:I

    .line 60
    .line 61
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/live/render/FTXProgram;->mProgramId:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/tencent/vod/flutter/live/render/FTXProgram;->mProgramId:I

    .line 8
    .line 9
    return-void
.end method

.method public getProgramId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/live/render/FTXProgram;->mProgramId:I

    .line 2
    .line 3
    return v0
.end method
