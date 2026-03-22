.class public final Lcom/tencent/liteav/videobase/frame/i;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static final c:[F

.field private static final d:[F


# instance fields
.field private e:I

.field private f:I

.field private final g:Ljava/nio/FloatBuffer;

.field private final h:Ljava/nio/FloatBuffer;

.field private final i:[Lcom/tencent/liteav/videobase/a/a;

.field private j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field private k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private l:Lcom/tencent/liteav/videobase/b/a;

.field private m:Lcom/tencent/liteav/videobase/a/a;

.field private n:Lcom/tencent/liteav/videobase/frame/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/tencent/liteav/videobase/frame/i;->a:[F

    .line 9
    .line 10
    new-array v1, v0, [F

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/tencent/liteav/videobase/frame/i;->b:[F

    .line 16
    .line 17
    new-array v1, v0, [F

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/tencent/liteav/videobase/frame/i;->c:[F

    .line 23
    .line 24
    new-array v0, v0, [F

    .line 25
    .line 26
    fill-array-data v0, :array_3

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/tencent/liteav/videobase/frame/i;->d:[F

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
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
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

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
    .line 70
    .line 71
    .line 72
    .line 73
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 74
    .line 75
    .line 76
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->values()[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    array-length v0, v0

    .line 9
    new-array v0, v0, [Lcom/tencent/liteav/videobase/a/a;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->i:[Lcom/tencent/liteav/videobase/a/a;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->l:Lcom/tencent/liteav/videobase/b/a;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->m:Lcom/tencent/liteav/videobase/a/a;

    .line 19
    .line 20
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    .line 21
    .line 22
    iput p2, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    .line 23
    .line 24
    sget-object p1, Lcom/tencent/liteav/videobase/base/GLConstants;->d:[F

    .line 25
    .line 26
    array-length p2, p1

    .line 27
    mul-int/lit8 p2, p2, 0x4

    .line 28
    .line 29
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/i;->g:Ljava/nio/FloatBuffer;

    .line 50
    .line 51
    sget-object p1, Lcom/tencent/liteav/base/util/l;->a:Lcom/tencent/liteav/base/util/l;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-static {p1, p2, p2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTextureCoordsBuffer(Lcom/tencent/liteav/base/util/l;ZZ)Ljava/nio/FloatBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/i;->h:Ljava/nio/FloatBuffer;

    .line 59
    .line 60
    return-void
.end method

.method private static a(F)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    return v0
.end method

.method private static a(FF)F
    .locals 1

    .line 2
    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    return p0
.end method

.method private a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/frame/d;Ljava/nio/ByteBuffer;Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V
    .locals 3

    .line 54
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->i:[Lcom/tencent/liteav/videobase/a/a;

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    .line 56
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-ne p1, v2, :cond_0

    .line 57
    new-instance p1, Lcom/tencent/liteav/videobase/c/a;

    invoke-direct {p1, p4, p5}, Lcom/tencent/liteav/videobase/c/a;-><init>(Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V

    aput-object p1, v1, v0

    goto :goto_0

    .line 58
    :cond_0
    sget-object p4, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-ne p1, p4, :cond_1

    .line 59
    new-instance p1, Lcom/tencent/liteav/videobase/c/d;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/c/d;-><init>()V

    aput-object p1, v1, v0

    goto :goto_0

    .line 60
    :cond_1
    new-instance p1, Lcom/tencent/liteav/videobase/c/c;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/c/c;-><init>()V

    aput-object p1, v1, v0

    .line 61
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videobase/frame/i;->i:[Lcom/tencent/liteav/videobase/a/a;

    aget-object p1, p1, v0

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/tencent/liteav/videobase/a/a;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videobase/frame/i;->i:[Lcom/tencent/liteav/videobase/a/a;

    aget-object p1, p1, v0

    check-cast p1, Lcom/tencent/liteav/videobase/c/e;

    .line 63
    iget p4, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    iget p5, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    invoke-virtual {p1, p4, p5}, Lcom/tencent/liteav/videobase/a/a;->a(II)V

    .line 64
    iget p4, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    iget p5, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    const/4 v0, 0x0

    invoke-static {v0, v0, p4, p5}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 65
    iget-object p4, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object p4

    sget-object p5, Lcom/tencent/liteav/base/util/l;->b:Lcom/tencent/liteav/base/util/l;

    if-eq p4, p5, :cond_4

    iget-object p4, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 66
    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object p4

    sget-object p5, Lcom/tencent/liteav/base/util/l;->d:Lcom/tencent/liteav/base/util/l;

    if-ne p4, p5, :cond_3

    goto :goto_1

    .line 67
    :cond_3
    iget-object p4, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 68
    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result p5

    .line 69
    invoke-virtual {p1, p3, p4, p5}, Lcom/tencent/liteav/videobase/c/e;->a(Ljava/nio/ByteBuffer;II)V

    goto :goto_2

    .line 70
    :cond_4
    :goto_1
    iget-object p4, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 71
    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result p4

    iget-object p5, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p5

    .line 72
    invoke-virtual {p1, p3, p4, p5}, Lcom/tencent/liteav/videobase/c/e;->a(Ljava/nio/ByteBuffer;II)V

    .line 73
    :goto_2
    iget-object p3, p0, Lcom/tencent/liteav/videobase/frame/i;->g:Ljava/nio/FloatBuffer;

    iget-object p4, p0, Lcom/tencent/liteav/videobase/frame/i;->h:Ljava/nio/FloatBuffer;

    const/4 p5, -0x1

    invoke-virtual {p1, p5, p2, p3, p4}, Lcom/tencent/liteav/videobase/c/e;->a(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/d;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->n:Lcom/tencent/liteav/videobase/frame/c;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/tencent/liteav/videobase/frame/c;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->n:Lcom/tencent/liteav/videobase/frame/c;

    .line 88
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/c;->a()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 89
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    const/4 v1, 0x0

    const v2, 0x8d40

    if-nez p1, :cond_1

    .line 90
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 91
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/tencent/liteav/videobase/frame/i;->n:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/tencent/liteav/videobase/frame/c;->a(I)V

    .line 93
    iget-object p1, p0, Lcom/tencent/liteav/videobase/frame/i;->n:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->b()V

    .line 94
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 95
    invoke-static {v2, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->bindFramebuffer(II)V

    .line 96
    iget-object p1, p0, Lcom/tencent/liteav/videobase/frame/i;->n:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->c()V

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/d;I)V
    .locals 3

    .line 82
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/i;->c()V

    .line 83
    iget v0, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    iget v1, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 84
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->m:Lcom/tencent/liteav/videobase/a/a;

    iget v1, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    iget v2, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/a/a;->a(II)V

    .line 85
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->m:Lcom/tencent/liteav/videobase/a/a;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->g:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/i;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/tencent/liteav/videobase/a/a;->a(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/d;I[F)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->l:Lcom/tencent/liteav/videobase/b/a;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/tencent/liteav/videobase/b/a;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->l:Lcom/tencent/liteav/videobase/b/a;

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/a/a;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 77
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    iget v1, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 78
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->l:Lcom/tencent/liteav/videobase/b/a;

    .line 79
    iput-object p3, v0, Lcom/tencent/liteav/videobase/a/a;->g:[F

    .line 80
    iget p3, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    iget v1, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    invoke-virtual {v0, p3, v1}, Lcom/tencent/liteav/videobase/a/a;->a(II)V

    .line 81
    iget-object p3, p0, Lcom/tencent/liteav/videobase/frame/i;->l:Lcom/tencent/liteav/videobase/b/a;

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->g:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/tencent/liteav/videobase/a/a;->a(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/d;Ljava/nio/Buffer;)V
    .locals 4

    .line 42
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->i:[Lcom/tencent/liteav/videobase/a/a;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 44
    new-instance v2, Lcom/tencent/liteav/videobase/b/d;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/b/d;-><init>()V

    aput-object v2, v1, v0

    .line 45
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->i:[Lcom/tencent/liteav/videobase/a/a;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/a/a;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->i:[Lcom/tencent/liteav/videobase/a/a;

    aget-object v0, v1, v0

    check-cast v0, Lcom/tencent/liteav/videobase/b/d;

    .line 47
    iget v1, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    iget v2, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/a/a;->a(II)V

    .line 48
    iget v1, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    iget v2, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 49
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object v1

    sget-object v2, Lcom/tencent/liteav/base/util/l;->b:Lcom/tencent/liteav/base/util/l;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 50
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object v1

    sget-object v2, Lcom/tencent/liteav/base/util/l;->d:Lcom/tencent/liteav/base/util/l;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/tencent/liteav/videobase/b/d;->a(Ljava/nio/Buffer;II)V

    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/tencent/liteav/videobase/b/d;->a(Ljava/nio/Buffer;II)V

    .line 53
    :goto_1
    iget-object p2, p0, Lcom/tencent/liteav/videobase/frame/i;->g:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->h:Ljava/nio/FloatBuffer;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/tencent/liteav/videobase/b/d;->a(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method private static a([FLcom/tencent/liteav/base/util/l;ZZ)V
    .locals 5

    .line 97
    sget-object v0, Lcom/tencent/liteav/videobase/frame/i;->a:[F

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 98
    sget-object v4, Lcom/tencent/liteav/videobase/frame/i$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Lcom/tencent/liteav/videobase/frame/i;->c:[F

    goto :goto_0

    .line 100
    :cond_1
    sget-object v0, Lcom/tencent/liteav/videobase/frame/i;->d:[F

    goto :goto_0

    .line 101
    :cond_2
    sget-object v0, Lcom/tencent/liteav/videobase/frame/i;->b:[F

    .line 102
    :cond_3
    :goto_0
    array-length p1, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, p0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_4

    .line 103
    aget p1, p0, v4

    invoke-static {p1}, Lcom/tencent/liteav/videobase/frame/i;->a(F)F

    move-result p1

    aput p1, p0, v4

    .line 104
    aget p1, p0, v2

    invoke-static {p1}, Lcom/tencent/liteav/videobase/frame/i;->a(F)F

    move-result p1

    aput p1, p0, v2

    const/4 p1, 0x4

    .line 105
    aget p2, p0, p1

    invoke-static {p2}, Lcom/tencent/liteav/videobase/frame/i;->a(F)F

    move-result p2

    aput p2, p0, p1

    const/4 p1, 0x6

    .line 106
    aget p2, p0, p1

    invoke-static {p2}, Lcom/tencent/liteav/videobase/frame/i;->a(F)F

    move-result p2

    aput p2, p0, p1

    :cond_4
    if-eqz p3, :cond_5

    .line 107
    aget p1, p0, v3

    invoke-static {p1}, Lcom/tencent/liteav/videobase/frame/i;->a(F)F

    move-result p1

    aput p1, p0, v3

    .line 108
    aget p1, p0, v1

    invoke-static {p1}, Lcom/tencent/liteav/videobase/frame/i;->a(F)F

    move-result p1

    aput p1, p0, v1

    const/4 p1, 0x5

    .line 109
    aget p2, p0, p1

    invoke-static {p2}, Lcom/tencent/liteav/videobase/frame/i;->a(F)F

    move-result p2

    aput p2, p0, p1

    const/4 p1, 0x7

    .line 110
    aget p2, p0, p1

    invoke-static {p2}, Lcom/tencent/liteav/videobase/frame/i;->a(F)F

    move-result p2

    aput p2, p0, p1

    :cond_5
    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$a;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$a;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result p2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v0

    if-ne p2, v0, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result p2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v0

    if-ne p2, v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private b()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lcom/tencent/liteav/base/util/l;->b:Lcom/tencent/liteav/base/util/l;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eq v1, v2, :cond_2

    .line 17
    .line 18
    iget-object v1, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/tencent/liteav/base/util/l;->d:Lcom/tencent/liteav/base/util/l;

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    move v1, v3

    .line 32
    :goto_1
    iget-object v2, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v5, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget v6, v0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    .line 45
    .line 46
    int-to-float v6, v6

    .line 47
    const/high16 v7, 0x3f800000    # 1.0f

    .line 48
    .line 49
    mul-float/2addr v6, v7

    .line 50
    int-to-float v2, v2

    .line 51
    div-float/2addr v6, v2

    .line 52
    iget v8, v0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    .line 53
    .line 54
    int-to-float v8, v8

    .line 55
    mul-float/2addr v8, v7

    .line 56
    int-to-float v5, v5

    .line 57
    div-float/2addr v8, v5

    .line 58
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    mul-float/2addr v2, v6

    .line 63
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    int-to-float v2, v2

    .line 68
    mul-float/2addr v2, v7

    .line 69
    iget v8, v0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    .line 70
    .line 71
    int-to-float v8, v8

    .line 72
    div-float/2addr v2, v8

    .line 73
    mul-float/2addr v5, v6

    .line 74
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    int-to-float v5, v5

    .line 79
    mul-float/2addr v5, v7

    .line 80
    iget v6, v0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    .line 81
    .line 82
    int-to-float v6, v6

    .line 83
    div-float/2addr v5, v6

    .line 84
    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants;->d:[F

    .line 85
    .line 86
    const/16 v8, 0x8

    .line 87
    .line 88
    new-array v9, v8, [F

    .line 89
    .line 90
    iget-object v10, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 91
    .line 92
    invoke-virtual {v10}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$a;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    sget-object v11, Lcom/tencent/liteav/videobase/base/GLConstants$a;->c:Lcom/tencent/liteav/videobase/base/GLConstants$a;

    .line 97
    .line 98
    if-ne v10, v11, :cond_3

    .line 99
    .line 100
    iget-object v10, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 101
    .line 102
    invoke-virtual {v10}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    iget-object v11, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 107
    .line 108
    invoke-virtual {v11}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    iget-object v12, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 113
    .line 114
    invoke-virtual {v12}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    invoke-static {v9, v10, v11, v12}, Lcom/tencent/liteav/videobase/frame/i;->a([FLcom/tencent/liteav/base/util/l;ZZ)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    iget-object v10, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 123
    .line 124
    invoke-virtual {v10}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    iget-object v11, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 129
    .line 130
    invoke-virtual {v11}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    iget-object v12, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 135
    .line 136
    invoke-virtual {v12}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    invoke-static {v9, v10, v11, v12}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->initTextureCoordsBuffer([FLcom/tencent/liteav/base/util/l;ZZ)V

    .line 141
    .line 142
    .line 143
    :goto_2
    iget-object v10, v0, Lcom/tencent/liteav/videobase/frame/i;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 144
    .line 145
    sget-object v11, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 146
    .line 147
    const/4 v12, 0x7

    .line 148
    const/4 v13, 0x6

    .line 149
    const/4 v14, 0x5

    .line 150
    const/4 v15, 0x4

    .line 151
    const/16 v16, 0x3

    .line 152
    .line 153
    const/16 v17, 0x2

    .line 154
    .line 155
    if-ne v10, v11, :cond_6

    .line 156
    .line 157
    const/high16 v8, 0x40000000    # 2.0f

    .line 158
    .line 159
    if-eqz v1, :cond_4

    .line 160
    .line 161
    div-float v10, v7, v5

    .line 162
    .line 163
    :goto_3
    sub-float v10, v7, v10

    .line 164
    .line 165
    div-float/2addr v10, v8

    .line 166
    goto :goto_4

    .line 167
    :cond_4
    div-float v10, v7, v2

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :goto_4
    if-eqz v1, :cond_5

    .line 171
    .line 172
    div-float v1, v7, v2

    .line 173
    .line 174
    :goto_5
    sub-float/2addr v7, v1

    .line 175
    div-float/2addr v7, v8

    .line 176
    goto :goto_6

    .line 177
    :cond_5
    div-float v1, v7, v5

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :goto_6
    aget v1, v9, v4

    .line 181
    .line 182
    invoke-static {v1, v10}, Lcom/tencent/liteav/videobase/frame/i;->a(FF)F

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    aput v1, v9, v4

    .line 187
    .line 188
    aget v1, v9, v3

    .line 189
    .line 190
    invoke-static {v1, v7}, Lcom/tencent/liteav/videobase/frame/i;->a(FF)F

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    aput v1, v9, v3

    .line 195
    .line 196
    aget v1, v9, v17

    .line 197
    .line 198
    invoke-static {v1, v10}, Lcom/tencent/liteav/videobase/frame/i;->a(FF)F

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    aput v1, v9, v17

    .line 203
    .line 204
    aget v1, v9, v16

    .line 205
    .line 206
    invoke-static {v1, v7}, Lcom/tencent/liteav/videobase/frame/i;->a(FF)F

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    aput v1, v9, v16

    .line 211
    .line 212
    aget v1, v9, v15

    .line 213
    .line 214
    invoke-static {v1, v10}, Lcom/tencent/liteav/videobase/frame/i;->a(FF)F

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    aput v1, v9, v15

    .line 219
    .line 220
    aget v1, v9, v14

    .line 221
    .line 222
    invoke-static {v1, v7}, Lcom/tencent/liteav/videobase/frame/i;->a(FF)F

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    aput v1, v9, v14

    .line 227
    .line 228
    aget v1, v9, v13

    .line 229
    .line 230
    invoke-static {v1, v10}, Lcom/tencent/liteav/videobase/frame/i;->a(FF)F

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    aput v1, v9, v13

    .line 235
    .line 236
    aget v1, v9, v12

    .line 237
    .line 238
    invoke-static {v1, v7}, Lcom/tencent/liteav/videobase/frame/i;->a(FF)F

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    aput v1, v9, v12

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_6
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 246
    .line 247
    if-ne v10, v1, :cond_7

    .line 248
    .line 249
    new-array v1, v8, [F

    .line 250
    .line 251
    aget v7, v6, v4

    .line 252
    .line 253
    div-float/2addr v7, v5

    .line 254
    aput v7, v1, v4

    .line 255
    .line 256
    aget v7, v6, v3

    .line 257
    .line 258
    div-float/2addr v7, v2

    .line 259
    aput v7, v1, v3

    .line 260
    .line 261
    aget v3, v6, v17

    .line 262
    .line 263
    div-float/2addr v3, v5

    .line 264
    aput v3, v1, v17

    .line 265
    .line 266
    aget v3, v6, v16

    .line 267
    .line 268
    div-float/2addr v3, v2

    .line 269
    aput v3, v1, v16

    .line 270
    .line 271
    aget v3, v6, v15

    .line 272
    .line 273
    div-float/2addr v3, v5

    .line 274
    aput v3, v1, v15

    .line 275
    .line 276
    aget v3, v6, v14

    .line 277
    .line 278
    div-float/2addr v3, v2

    .line 279
    aput v3, v1, v14

    .line 280
    .line 281
    aget v3, v6, v13

    .line 282
    .line 283
    div-float/2addr v3, v5

    .line 284
    aput v3, v1, v13

    .line 285
    .line 286
    aget v3, v6, v12

    .line 287
    .line 288
    div-float/2addr v3, v2

    .line 289
    aput v3, v1, v12

    .line 290
    .line 291
    move-object v6, v1

    .line 292
    :cond_7
    :goto_7
    iget-object v1, v0, Lcom/tencent/liteav/videobase/frame/i;->g:Ljava/nio/FloatBuffer;

    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 295
    .line 296
    .line 297
    iget-object v1, v0, Lcom/tencent/liteav/videobase/frame/i;->g:Ljava/nio/FloatBuffer;

    .line 298
    .line 299
    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    .line 305
    .line 306
    iget-object v1, v0, Lcom/tencent/liteav/videobase/frame/i;->h:Ljava/nio/FloatBuffer;

    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 309
    .line 310
    .line 311
    iget-object v1, v0, Lcom/tencent/liteav/videobase/frame/i;->h:Ljava/nio/FloatBuffer;

    .line 312
    .line 313
    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->m:Lcom/tencent/liteav/videobase/a/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/a/a;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/tencent/liteav/videobase/a/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->m:Lcom/tencent/liteav/videobase/a/a;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/a/a;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->l:Lcom/tencent/liteav/videobase/b/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/a;->b()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->l:Lcom/tencent/liteav/videobase/b/a;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->m:Lcom/tencent/liteav/videobase/a/a;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/a;->b()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->m:Lcom/tencent/liteav/videobase/a/a;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->n:Lcom/tencent/liteav/videobase/frame/c;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/c;->d()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/tencent/liteav/videobase/frame/i;->n:Lcom/tencent/liteav/videobase/frame/c;

    .line 28
    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/i;->i:[Lcom/tencent/liteav/videobase/a/a;

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    if-ge v0, v3, :cond_4

    .line 34
    .line 35
    aget-object v2, v2, v0

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/a/a;->b()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/i;->i:[Lcom/tencent/liteav/videobase/a/a;

    .line 43
    .line 44
    aput-object v1, v2, v0

    .line 45
    .line 46
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    const-string v0, "PixelFrameRenderer"

    .line 50
    .line 51
    const-string v1, "uninitialize GL components"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 34
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/i;->d()V

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 29
    iget v0, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 30
    :cond_1
    :goto_0
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/i;->e:I

    .line 31
    iput p2, p0, Lcom/tencent/liteav/videobase/frame/i;->f:I

    .line 32
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/i;->b()V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V
    .locals 12

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isFrameDataValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videobase/frame/i;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    :cond_2
    iput-object p2, p0, Lcom/tencent/liteav/videobase/frame/i;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 6
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 7
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/i;->d()V

    .line 8
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/i;->b()V

    .line 9
    :cond_3
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne p2, v0, :cond_4

    .line 10
    invoke-direct {p0, p3}, Lcom/tencent/liteav/videobase/frame/i;->a(Lcom/tencent/liteav/videobase/frame/d;)V

    .line 11
    :cond_4
    iget-object p2, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$a;

    move-result-object p2

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$a;->a:Lcom/tencent/liteav/videobase/base/GLConstants$a;

    if-ne p2, v0, :cond_6

    .line 12
    iget-object p2, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object p2

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-eq p2, v0, :cond_5

    .line 13
    iget-object p2, p0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getColorRange()Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getColorSpace()Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/videobase/frame/i;->a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/frame/d;Ljava/nio/ByteBuffer;Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V

    return-void

    :cond_5
    move-object v0, p0

    move-object v2, p3

    .line 16
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/tencent/liteav/videobase/frame/i;->a(Lcom/tencent/liteav/videobase/frame/d;Ljava/nio/Buffer;)V

    return-void

    :cond_6
    move-object v0, p0

    move-object v2, p3

    .line 17
    iget-object p2, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$a;

    move-result-object p2

    sget-object p3, Lcom/tencent/liteav/videobase/base/GLConstants$a;->d:Lcom/tencent/liteav/videobase/base/GLConstants$a;

    if-ne p2, p3, :cond_8

    .line 18
    iget-object p2, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object p2

    sget-object p3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-eq p2, p3, :cond_7

    .line 19
    iget-object p2, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v7

    .line 20
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getColorRange()Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    move-result-object v10

    .line 21
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getColorSpace()Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    move-result-object v11

    move-object v6, v0

    move-object v8, v2

    .line 22
    invoke-direct/range {v6 .. v11}, Lcom/tencent/liteav/videobase/frame/i;->a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/frame/d;Ljava/nio/ByteBuffer;Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V

    return-void

    .line 23
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/tencent/liteav/videobase/frame/i;->a(Lcom/tencent/liteav/videobase/frame/d;Ljava/nio/Buffer;)V

    return-void

    .line 24
    :cond_8
    iget-object p2, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$a;

    move-result-object p2

    sget-object p3, Lcom/tencent/liteav/videobase/base/GLConstants$a;->c:Lcom/tencent/liteav/videobase/base/GLConstants$a;

    if-ne p2, p3, :cond_9

    .line 25
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result p2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object p1

    invoke-direct {p0, v2, p2, p1}, Lcom/tencent/liteav/videobase/frame/i;->a(Lcom/tencent/liteav/videobase/frame/d;I[F)V

    return-void

    .line 26
    :cond_9
    iget-object p2, v0, Lcom/tencent/liteav/videobase/frame/i;->k:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$a;

    move-result-object p2

    sget-object p3, Lcom/tencent/liteav/videobase/base/GLConstants$a;->b:Lcom/tencent/liteav/videobase/base/GLConstants$a;

    if-ne p2, p3, :cond_a

    .line 27
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/tencent/liteav/videobase/frame/i;->a(Lcom/tencent/liteav/videobase/frame/d;I)V

    :cond_a
    return-void

    .line 28
    :goto_0
    const-string p1, "PixelFrameRenderer"

    const-string p2, "renderFrame: pixelFrame is not valid"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
