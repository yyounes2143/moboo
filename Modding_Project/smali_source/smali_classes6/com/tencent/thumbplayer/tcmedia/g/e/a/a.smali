.class public Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLContext;

.field d:Ljavax/microedition/khronos/egl/EGLSurface;

.field e:Lcom/tencent/thumbplayer/tcmedia/g/c/b;

.field f:Landroid/view/Surface;

.field g:Ljava/lang/Object;

.field h:Z

.field i:Lcom/tencent/thumbplayer/tcmedia/g/e/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->g:Ljava/lang/Object;

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a(II)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->c()V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/b;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->i:Lcom/tencent/thumbplayer/tcmedia/g/e/a/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/b;->b()V

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/g/c/b;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->i:Lcom/tencent/thumbplayer/tcmedia/g/e/a/b;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/b;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/g/c/b;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->e:Lcom/tencent/thumbplayer/tcmedia/g/c/b;

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a$1;-><init>(Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/g/c/b;->a(Lcom/tencent/thumbplayer/tcmedia/g/c/b$a;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->e:Lcom/tencent/thumbplayer/tcmedia/g/c/b;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/g/c/a;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->e:Lcom/tencent/thumbplayer/tcmedia/g/c/b;

    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/g/c/a;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->f:Landroid/view/Surface;

    return-void
.end method

.method public a(II)V
    .locals 9

    .line 2
    const/4 v0, 0x1

    const/16 v1, 0x3038

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    new-array v6, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v8, v0, [I

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x1

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3098

    const/4 v2, 0x2

    filled-new-array {v0, v2, v1}, [I

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x0

    aget-object v5, v6, v4

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v5, v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "eglCreateContext"

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    const/16 v0, 0x3057

    const/16 v2, 0x3056

    filled-new-array {v0, p1, v2, p2, v1}, [I

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v1, v6, v4

    invoke-interface {p2, v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string p1, "eglCreatePbufferSurface"

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "null context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL10"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 3
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EGL error encountered (see log)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 20
    .line 21
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 22
    .line 23
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 24
    .line 25
    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    .line 42
    .line 43
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->f:Landroid/view/Surface;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->i:Lcom/tencent/thumbplayer/tcmedia/g/e/a/b;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->f:Landroid/view/Surface;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->e:Lcom/tencent/thumbplayer/tcmedia/g/c/b;

    .line 65
    .line 66
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "before makeCurrent"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->c:Ljavax/microedition/khronos/egl/EGLContext;

    .line 17
    .line 18
    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    const-string v1, "eglMakeCurrent failed"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    const-string v1, "not configured for makeCurrent"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public d()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->f:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->h:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->h:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->g:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    const-string v1, "mFrameAvailable already set, frame could be dropped"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0
.end method
