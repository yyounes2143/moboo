.class public final Lcom/tencent/liteav/videobase/egl/a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/videobase/egl/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/liteav/videobase/egl/e<",
        "Ljavax/microedition/khronos/egl/EGLContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:[I

.field private static final j:[I


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private e:Ljavax/microedition/khronos/egl/EGLContext;

.field private f:Ljavax/microedition/khronos/egl/EGLSurface;

.field private g:Ljavax/microedition/khronos/egl/EGL10;

.field private h:Ljavax/microedition/khronos/egl/EGLConfig;


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
    sput-object v0, Lcom/tencent/liteav/videobase/egl/a;->i:[I

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
    sput-object v0, Lcom/tencent/liteav/videobase/egl/a;->j:[I

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
    iput-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 7
    .line 8
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 11
    .line 12
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 15
    .line 16
    iput p1, p0, Lcom/tencent/liteav/videobase/egl/a;->b:I

    .line 17
    .line 18
    iput p2, p0, Lcom/tencent/liteav/videobase/egl/a;->c:I

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "EGL10Helper@"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/tencent/liteav/videobase/egl/a;->a:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method public static a(Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/videobase/egl/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/egl/d;
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/tencent/liteav/videobase/egl/a;

    invoke-direct {v1, p2, p3}, Lcom/tencent/liteav/videobase/egl/a;-><init>(II)V

    .line 2
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p2

    check-cast p2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    .line 3
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object p2

    iput-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    iget-object p3, v1, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-interface {p3, p2, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 p2, 0x1

    .line 5
    new-array v7, p2, [I

    .line 6
    new-array v5, p2, [Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez p1, :cond_0

    .line 7
    sget-object p2, Lcom/tencent/liteav/videobase/egl/a;->i:[I

    :goto_0
    move-object v4, p2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    sget-object p2, Lcom/tencent/liteav/videobase/egl/a;->j:[I

    goto :goto_0

    .line 8
    :goto_1
    iget-object v2, v1, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v1, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x1

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 p2, 0x0

    .line 9
    aget-object p2, v5, p2

    iput-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 10
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result p2
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/d; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x12

    if-lt p2, p3, :cond_1

    .line 11
    :try_start_1
    iget-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, v1, Lcom/tencent/liteav/videobase/egl/a;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 12
    invoke-direct {v1, p2, p3, v0, p0}, Lcom/tencent/liteav/videobase/egl/a;->a(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    iput-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_1
    .catch Lcom/tencent/liteav/videobase/egl/d; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 13
    :catch_1
    :try_start_2
    iget-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->a:Ljava/lang/String;

    const-string p3, "failed to create EGLContext of OpenGL ES 2.0, try 3.0"

    invoke-static {p2, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, v1, Lcom/tencent/liteav/videobase/egl/a;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v0, 0x3

    .line 15
    invoke-direct {v1, p2, p3, v0, p0}, Lcom/tencent/liteav/videobase/egl/a;->a(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    iput-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_2

    .line 16
    :cond_1
    iget-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, v1, Lcom/tencent/liteav/videobase/egl/a;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {v1, p2, p3, v0, p0}, Lcom/tencent/liteav/videobase/egl/a;->a(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    iput-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 17
    :goto_2
    iget-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "create eglContext "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " sharedContext: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " version:"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 18
    iget p0, v1, Lcom/tencent/liteav/videobase/egl/a;->b:I

    iget p1, v1, Lcom/tencent/liteav/videobase/egl/a;->c:I

    const/16 p2, 0x3038

    const/16 p3, 0x3057

    const/16 v0, 0x3056

    filled-new-array {p3, p0, v0, p1, p2}, [I

    move-result-object p0

    .line 19
    iget-object p1, v1, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, v1, Lcom/tencent/liteav/videobase/egl/a;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p1, p2, p3, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_2
    .catch Lcom/tencent/liteav/videobase/egl/d; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 20
    :cond_2
    :try_start_3
    iget-object p0, v1, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, v1, Lcom/tencent/liteav/videobase/egl/a;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v0, 0x0

    invoke-interface {p0, p2, p3, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :goto_3
    :try_start_4
    iget-object p0, v1, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p0, p1, :cond_3

    .line 22
    invoke-direct {v1}, Lcom/tencent/liteav/videobase/egl/a;->h()V

    .line 23
    :cond_3
    iget-object p0, v1, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p1, v1, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p2, v1, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p3, v1, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p2, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 24
    invoke-direct {v1}, Lcom/tencent/liteav/videobase/egl/a;->h()V

    :cond_4
    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 25
    iget-object p1, v1, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    .line 26
    new-instance p2, Lcom/tencent/liteav/videobase/egl/d;

    const-string p3, ""

    invoke-direct {p2, p1, p3, p0}, Lcom/tencent/liteav/videobase/egl/d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Lcom/tencent/liteav/videobase/egl/d; {:try_start_4 .. :try_end_4} :catch_0

    .line 27
    :goto_4
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/egl/a;->c()V

    .line 28
    throw p0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/egl/d;
        }
    .end annotation

    const/16 v0, 0x3098

    const/16 v1, 0x3038

    .line 32
    filled-new-array {v0, p3, v1}, [I

    move-result-object p3

    if-nez p4, :cond_0

    .line 33
    sget-object p4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p4, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    .line 35
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/egl/a;->h()V

    return-object p1
.end method

.method private g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/egl/d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 2
    .line 3
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/egl/a;->d()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 15
    .line 16
    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/egl/a;->h()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-object v1, p0, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/egl/d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

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
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Lcom/tencent/liteav/videobase/egl/d;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/tencent/liteav/videobase/egl/d;-><init>(I)V

    .line 15
    .line 16
    .line 17
    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/egl/d;
        }
    .end annotation

    .line 29
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/egl/a;->h()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/egl/d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/egl/a;->h()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/egl/d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/egl/a;->d()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/egl/a;->g()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 14
    .line 15
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 16
    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->a:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v4, "destroy eglContext "

    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 45
    .line 46
    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 54
    .line 55
    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    iput-object v1, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 59
    .line 60
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

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

.method public final e()Lcom/tencent/liteav/base/util/Size;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 11
    .line 12
    const/16 v5, 0x3057

    .line 13
    .line 14
    invoke-interface {v2, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lcom/tencent/liteav/videobase/egl/a;->g:Ljavax/microedition/khronos/egl/EGL10;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/tencent/liteav/videobase/egl/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/tencent/liteav/videobase/egl/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 23
    .line 24
    const/16 v6, 0x3056

    .line 25
    .line 26
    invoke-interface {v3, v4, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    .line 36
    .line 37
    aget v1, v1, v4

    .line 38
    .line 39
    aget v0, v0, v4

    .line 40
    .line 41
    invoke-direct {v2, v1, v0}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_0
    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    .line 46
    .line 47
    invoke-direct {v0, v4, v4}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public final bridge synthetic f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/a;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 2
    .line 3
    return-object v0
.end method
