.class public final Lcom/tencent/liteav/videobase/c/a;
.super Lcom/tencent/liteav/videobase/c/e;
.source "Proguard"


# static fields
.field private static final j:[F

.field private static final k:[F

.field private static final l:[F

.field private static final m:[F

.field private static final n:[F

.field private static final o:[F


# instance fields
.field private p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/tencent/liteav/videobase/c/a;->j:[F

    .line 9
    .line 10
    new-array v1, v0, [F

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/tencent/liteav/videobase/c/a;->k:[F

    .line 16
    .line 17
    new-array v1, v0, [F

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/tencent/liteav/videobase/c/a;->l:[F

    .line 23
    .line 24
    new-array v0, v0, [F

    .line 25
    .line 26
    fill-array-data v0, :array_3

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/tencent/liteav/videobase/c/a;->m:[F

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    new-array v1, v0, [F

    .line 33
    .line 34
    fill-array-data v1, :array_4

    .line 35
    .line 36
    .line 37
    sput-object v1, Lcom/tencent/liteav/videobase/c/a;->n:[F

    .line 38
    .line 39
    new-array v0, v0, [F

    .line 40
    .line 41
    fill-array-data v0, :array_5

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/tencent/liteav/videobase/c/a;->o:[F

    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 4
        0x3f950b0f    # 1.1644f
        0x3f950b0f    # 1.1644f
        0x3f950b0f    # 1.1644f
        0x0
        -0x413765fe    # -0.3918f
        0x400119ce    # 2.0172f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

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
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x414fd220    # -0.3441f
        0x3fe2d0e5    # 1.772f
        0x3fb374bc    # 1.402f
        -0x40c930be    # -0.7141f
        0x0
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_2
    .array-data 4
        0x3f950b0f    # 1.1644f
        0x3f950b0f    # 1.1644f
        0x3f950b0f    # 1.1644f
        0x0
        -0x41a5aee6    # -0.2132f
        0x40073190    # 2.1124f
        0x3fe57732    # 1.7927f
        -0x40f793de    # -0.5329f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x41c0346e    # -0.1873f
        0x3fed844d    # 1.8556f
        0x3fc9930c    # 1.5748f
        -0x41105532    # -0.4681f
        0x0
    .end array-data

    :array_4
    .array-data 4
        -0x427f7f7f
        -0x40ff7f7f
        -0x40ff7f7f
    .end array-data

    :array_5
    .array-data 4
        0x0
        -0x40ff7f7f
        -0x40ff7f7f
    .end array-data
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V
    .locals 2

    .line 1
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    .line 2
    .line 3
    const-string v1, "precision highp float;\nvarying vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform sampler2D uvTexture;\nuniform mat3 convertMatrix;\nuniform vec3 offset;\n\nvoid main()\n{\n    highp vec3 yuvColor;\n    highp vec3 rgbColor;\n\n    // Get the YUV values\n    yuvColor.x = texture2D(inputImageTexture, textureCoordinate).r;\n    yuvColor.y = texture2D(uvTexture, vec2(textureCoordinate.x, textureCoordinate.y * 0.5)).r;\n    yuvColor.z = texture2D(uvTexture, vec2(textureCoordinate.x, textureCoordinate.y * 0.5 + 0.5)).r;\n\n    // Do the color transform\n    yuvColor += offset;\n    rgbColor = convertMatrix * yuvColor;\n\n    gl_FragColor = vec4(rgbColor, 1.0);\n}"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/liteav/videobase/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videobase/c/a;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/tencent/liteav/videobase/a/a;->f:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/tencent/liteav/videobase/c/a;->q:I

    .line 7
    .line 8
    sget-object v1, Lcom/tencent/liteav/videobase/c/a$1;->a:[I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tencent/liteav/videobase/c/e;->i:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    aget v1, v1, v2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    sget-object v1, Lcom/tencent/liteav/videobase/c/a;->n:[F

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lcom/tencent/liteav/videobase/c/a;->o:[F

    .line 25
    .line 26
    :goto_0
    const/4 v3, 0x0

    .line 27
    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/tencent/liteav/videobase/c/a;->p:I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/tencent/liteav/videobase/c/e;->h:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    .line 37
    .line 38
    if-ne v1, v4, :cond_2

    .line 39
    .line 40
    :cond_1
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    .line 41
    .line 42
    :cond_2
    iget-object p0, p0, Lcom/tencent/liteav/videobase/c/e;->i:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    .line 43
    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    .line 47
    .line 48
    if-ne p0, v4, :cond_4

    .line 49
    .line 50
    :cond_3
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    .line 51
    .line 52
    :cond_4
    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    .line 53
    .line 54
    if-ne v1, v4, :cond_5

    .line 55
    .line 56
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    .line 57
    .line 58
    if-eq p0, v1, :cond_7

    .line 59
    .line 60
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->c:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    .line 61
    .line 62
    if-ne p0, v1, :cond_7

    .line 63
    .line 64
    sget-object p0, Lcom/tencent/liteav/videobase/c/a;->k:[F

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->c:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    .line 68
    .line 69
    if-ne v1, v4, :cond_7

    .line 70
    .line 71
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    .line 72
    .line 73
    if-ne p0, v1, :cond_6

    .line 74
    .line 75
    sget-object p0, Lcom/tencent/liteav/videobase/c/a;->l:[F

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->c:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    .line 79
    .line 80
    if-ne p0, v1, :cond_7

    .line 81
    .line 82
    sget-object p0, Lcom/tencent/liteav/videobase/c/a;->m:[F

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_7
    sget-object p0, Lcom/tencent/liteav/videobase/c/a;->j:[F

    .line 86
    .line 87
    :goto_1
    invoke-static {v0, v2, v3, p0, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 88
    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final b(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/c/e;->b(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/tencent/liteav/videobase/a/a;->f:I

    .line 5
    .line 6
    const-string v0, "convertMatrix"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/tencent/liteav/videobase/c/a;->p:I

    .line 13
    .line 14
    iget p1, p0, Lcom/tencent/liteav/videobase/a/a;->f:I

    .line 15
    .line 16
    const-string v0, "offset"

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/tencent/liteav/videobase/c/a;->q:I

    .line 23
    .line 24
    invoke-static {p0}, Lcom/tencent/liteav/videobase/c/b;->a(Lcom/tencent/liteav/videobase/c/a;)Ljava/lang/Runnable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videobase/a/a;->a(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    const/16 v0, 0x1909

    .line 2
    .line 3
    return v0
.end method
