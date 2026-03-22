.class public Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final NO_FILTER_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field public static final NO_FILTER_FRAGMENT_SHADER_FLIP:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, vec2(1.0 - textureCoordinate.x, textureCoordinate.y));\n}"

.field public static final NO_FILTER_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"


# instance fields
.field private mGLAttribPosition:I

.field private mGLAttribTextureCoordinate:I

.field private mGLUniformTexture:I

.field private mIsInitialized:Z

.field protected mProgram:Lcom/tencent/vod/flutter/live/render/FTXProgram;

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextureMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Lcom/tencent/vod/flutter/live/render/FTXProgram;

    if-eqz p1, :cond_0

    .line 5
    const-string p1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, vec2(1.0 - textureCoordinate.x, textureCoordinate.y));\n}"

    goto :goto_0

    :cond_0
    const-string p1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    :goto_0
    const-string v1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    invoke-direct {v0, v1, p1}, Lcom/tencent/vod/flutter/live/render/FTXProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mProgram:Lcom/tencent/vod/flutter/live/render/FTXProgram;

    return-void
.end method


# virtual methods
.method public beforeDrawArrays(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->runPendingOnDrawTasks()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->onUninit()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mIsInitialized:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mProgram:Lcom/tencent/vod/flutter/live/render/FTXProgram;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/live/render/FTXProgram;->destroy()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public getTarget()I
    .locals 1

    .line 1
    const/16 v0, 0xde1

    .line 2
    .line 3
    return v0
.end method

.method public final init()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->onInit()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mIsInitialized:Z

    .line 6
    .line 7
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mIsInitialized:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mProgram:Lcom/tencent/vod/flutter/live/render/FTXProgram;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/live/render/FTXProgram;->getProgramId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->runPendingOnDrawTasks()V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mIsInitialized:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mGLAttribPosition:I

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v2, 0x2

    .line 27
    const/16 v3, 0x1406

    .line 28
    .line 29
    move-object v6, p2

    .line 30
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 31
    .line 32
    .line 33
    iget p2, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mGLAttribPosition:I

    .line 34
    .line 35
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mGLAttribTextureCoordinate:I

    .line 42
    .line 43
    move-object v6, p3

    .line 44
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 45
    .line 46
    .line 47
    iget p2, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mGLAttribTextureCoordinate:I

    .line 48
    .line 49
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 50
    .line 51
    .line 52
    const/4 p2, -0x1

    .line 53
    if-eq p1, p2, :cond_1

    .line 54
    .line 55
    const p2, 0x84c0

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->getTarget()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-static {p2, p1}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->bindTexture(II)V

    .line 66
    .line 67
    .line 68
    iget p2, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mGLUniformTexture:I

    .line 69
    .line 70
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->beforeDrawArrays(I)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x5

    .line 77
    const/4 p2, 0x4

    .line 78
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 79
    .line 80
    .line 81
    iget p1, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mGLAttribPosition:I

    .line 82
    .line 83
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 84
    .line 85
    .line 86
    iget p1, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mGLAttribTextureCoordinate:I

    .line 87
    .line 88
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->getTarget()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->bindTexture(II)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public onInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mProgram:Lcom/tencent/vod/flutter/live/render/FTXProgram;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/live/render/FTXProgram;->build()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mProgram:Lcom/tencent/vod/flutter/live/render/FTXProgram;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/live/render/FTXProgram;->getProgramId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "position"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mGLAttribPosition:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mProgram:Lcom/tencent/vod/flutter/live/render/FTXProgram;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/live/render/FTXProgram;->getProgramId()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v1, "inputImageTexture"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mGLUniformTexture:I

    .line 33
    .line 34
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mProgram:Lcom/tencent/vod/flutter/live/render/FTXProgram;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/live/render/FTXProgram;->getProgramId()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v1, "inputTextureCoordinate"

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mGLAttribTextureCoordinate:I

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mIsInitialized:Z

    .line 50
    .line 51
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUninit()V
    .locals 0

    .line 1
    return-void
.end method

.method public runPendingOnDrawTasks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v1
.end method

.method public setTexutreTransform([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXGPUImageFilter;->mTextureMatrix:[F

    .line 2
    .line 3
    return-void
.end method
