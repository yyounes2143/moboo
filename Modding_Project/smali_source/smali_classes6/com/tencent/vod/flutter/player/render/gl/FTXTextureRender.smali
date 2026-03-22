.class public Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec4 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord.xy/vTextureCoord.z);}\n"

.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_COORDS:[F

.field private static final TAG:Ljava/lang/String; = "FTXTextureRender"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = uSTMatrix * aTextureCoord;\n}\n"


# instance fields
.field mPortHeight:I

.field mPortWidth:I

.field private mProgram:I

.field private mRenderMode:J

.field private final mSTMatrix:[F

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I

.field private final projectionMatrix:[F

.field private final textureID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->FULL_RECTANGLE_COORDS:[F

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    new-array v1, v1, [F

    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->FULL_RECTANGLE_TEX_COORDS:[F

    .line 18
    .line 19
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/render/gl/TXGlUtilVideo;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/tencent/vod/flutter/player/render/gl/TXGlUtilVideo;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

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
    .line 60
    .line 61
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v1, v0, [F

    .line 7
    .line 8
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mSTMatrix:[F

    .line 9
    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->projectionMatrix:[F

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [I

    .line 16
    .line 17
    iput-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->textureID:[I

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mRenderMode:J

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 25
    .line 26
    .line 27
    iput p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortWidth:I

    .line 28
    .line 29
    iput p2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortHeight:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public cleanDrawCache()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortWidth:I

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortHeight:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x4000

    .line 10
    .line 11
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public deleteTexture()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mProgram:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->textureID:[I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public drawFrame()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->cleanDrawCache()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mProgram:I

    .line 5
    .line 6
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->maPositionHandle:I

    .line 10
    .line 11
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->maPositionHandle:I

    .line 15
    .line 16
    const/16 v5, 0xc

    .line 17
    .line 18
    sget-object v6, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    const/16 v3, 0x1406

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->maTextureHandle:I

    .line 28
    .line 29
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->maTextureHandle:I

    .line 33
    .line 34
    const/16 v5, 0x10

    .line 35
    .line 36
    sget-object v6, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->muMVPMatrixHandle:I

    .line 43
    .line 44
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->projectionMatrix:[F

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->muSTMatrixHandle:I

    .line 52
    .line 53
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mSTMatrix:[F

    .line 54
    .line 55
    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x5

    .line 59
    const/4 v1, 0x4

    .line 60
    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->maPositionHandle:I

    .line 64
    .line 65
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 66
    .line 67
    .line 68
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->maTextureHandle:I

    .line 69
    .line 70
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public getTextureID()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->textureID:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public initTex()I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 6
    .line 7
    .line 8
    const v0, 0x84c0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 12
    .line 13
    .line 14
    aget v0, v1, v2

    .line 15
    .line 16
    const v3, 0x8d65

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0x2802

    .line 23
    .line 24
    const v4, 0x812f

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x2803

    .line 31
    .line 32
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 33
    .line 34
    .line 35
    const/16 v0, 0x2801

    .line 36
    .line 37
    const/16 v4, 0x2600

    .line 38
    .line 39
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x2800

    .line 43
    .line 44
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 45
    .line 46
    .line 47
    aget v0, v1, v2

    .line 48
    .line 49
    return v0
.end method

.method public setViewPortSize(II)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortHeight:I

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p2, "setViewPortSize\uff1a,viewWidth:"

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget p2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortWidth:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, "\uff0cviewHeight\uff1a"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget p2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortHeight:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, ",hashCode:"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "FTXTextureRender"

    .line 47
    .line 48
    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mVideoWidth:I

    .line 52
    .line 53
    iget p2, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mVideoHeight:I

    .line 54
    .line 55
    iget-wide v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mRenderMode:J

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->updateSizeAndRenderMode(IIJ)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public surfaceCreated()V
    .locals 3

    .line 1
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = uSTMatrix * aTextureCoord;\n}\n"

    .line 2
    .line 3
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec4 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord.xy/vTextureCoord.z);}\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/vod/flutter/player/render/gl/TXGlUtilVideo;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mProgram:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "aPosition"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->maPositionHandle:I

    .line 20
    .line 21
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mProgram:I

    .line 22
    .line 23
    const-string v1, "aTextureCoord"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->maTextureHandle:I

    .line 30
    .line 31
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mProgram:I

    .line 32
    .line 33
    const-string v1, "uMVPMatrix"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->muMVPMatrixHandle:I

    .line 40
    .line 41
    iget v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mProgram:I

    .line 42
    .line 43
    const-string v1, "uSTMatrix"

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->muSTMatrixHandle:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->textureID:[I

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->initTex()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    aput v2, v0, v1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    const-string v1, "failed creating program"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public updateSizeAndRenderMode(IIJ)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v3, p3

    .line 8
    .line 9
    iput v1, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mVideoWidth:I

    .line 10
    .line 11
    iput v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mVideoHeight:I

    .line 12
    .line 13
    iput-wide v3, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mRenderMode:J

    .line 14
    .line 15
    iget v5, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortWidth:I

    .line 16
    .line 17
    const-string v6, ",hashCode:"

    .line 18
    .line 19
    const-string v7, "\uff0cviewHeight:"

    .line 20
    .line 21
    const-string v8, ",viewWidth:"

    .line 22
    .line 23
    const-string v9, ",mHeight:"

    .line 24
    .line 25
    const-string v10, "FTXTextureRender"

    .line 26
    .line 27
    if-lez v5, :cond_2

    .line 28
    .line 29
    iget v11, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortHeight:I

    .line 30
    .line 31
    if-lez v11, :cond_2

    .line 32
    .line 33
    if-lez v1, :cond_2

    .line 34
    .line 35
    if-lez v2, :cond_2

    .line 36
    .line 37
    int-to-float v1, v1

    .line 38
    int-to-float v2, v2

    .line 39
    div-float/2addr v1, v2

    .line 40
    int-to-float v2, v5

    .line 41
    int-to-float v12, v11

    .line 42
    div-float/2addr v2, v12

    .line 43
    const-wide/16 v12, 0x0

    .line 44
    .line 45
    cmp-long v12, v3, v12

    .line 46
    .line 47
    const-string v13, ",mWidth:"

    .line 48
    .line 49
    const/high16 v14, 0x3f800000    # 1.0f

    .line 50
    .line 51
    const/high16 v15, -0x40800000    # -1.0f

    .line 52
    .line 53
    if-nez v12, :cond_0

    .line 54
    .line 55
    cmpl-float v2, v1, v2

    .line 56
    .line 57
    if-lez v2, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-wide/16 v16, 0x1

    .line 61
    .line 62
    cmp-long v3, v3, v16

    .line 63
    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    cmpg-float v2, v1, v2

    .line 67
    .line 68
    if-gtz v2, :cond_1

    .line 69
    .line 70
    :goto_0
    int-to-float v2, v5

    .line 71
    div-float/2addr v2, v1

    .line 72
    int-to-float v1, v11

    .line 73
    div-float/2addr v2, v1

    .line 74
    div-float v1, v15, v2

    .line 75
    .line 76
    div-float v3, v14, v2

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v5, "heightRadio:"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mVideoWidth:I

    .line 95
    .line 96
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mVideoHeight:I

    .line 103
    .line 104
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortWidth:I

    .line 111
    .line 112
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortHeight:I

    .line 119
    .line 120
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v10, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    move/from16 v20, v1

    .line 141
    .line 142
    move/from16 v21, v3

    .line 143
    .line 144
    move/from16 v19, v14

    .line 145
    .line 146
    move/from16 v18, v15

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_1
    int-to-float v2, v11

    .line 150
    mul-float/2addr v2, v1

    .line 151
    int-to-float v1, v5

    .line 152
    div-float/2addr v2, v1

    .line 153
    div-float v1, v15, v2

    .line 154
    .line 155
    div-float v3, v14, v2

    .line 156
    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v5, "widthRadio:"

    .line 163
    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mVideoWidth:I

    .line 174
    .line 175
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mVideoHeight:I

    .line 182
    .line 183
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortWidth:I

    .line 190
    .line 191
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortHeight:I

    .line 198
    .line 199
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-static {v10, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    move/from16 v18, v1

    .line 220
    .line 221
    move/from16 v19, v3

    .line 222
    .line 223
    move/from16 v21, v14

    .line 224
    .line 225
    move/from16 v20, v15

    .line 226
    .line 227
    :goto_1
    iget-object v1, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->projectionMatrix:[F

    .line 228
    .line 229
    const/high16 v22, -0x40800000    # -1.0f

    .line 230
    .line 231
    const/high16 v23, 0x3f800000    # 1.0f

    .line 232
    .line 233
    const/16 v17, 0x0

    .line 234
    .line 235
    move-object/from16 v16, v1

    .line 236
    .line 237
    invoke-static/range {v16 .. v23}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v2, "updateSizeAndRenderMode failed, size maybe zero, mWidth:"

    .line 247
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mVideoWidth:I

    .line 252
    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mVideoHeight:I

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortWidth:I

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget v2, v0, Lcom/tencent/vod/flutter/player/render/gl/FTXTextureRender;->mPortHeight:I

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v10, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return-void
.end method
