.class public final Lcom/tencent/liteav/videoconsumer/renderer/v;
.super Lcom/tencent/liteav/videoconsumer/renderer/t;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;


# instance fields
.field private final A:Lcom/tencent/liteav/base/util/Size;

.field private B:Lcom/tencent/liteav/videobase/base/a;

.field private C:Lcom/tencent/liteav/videoconsumer/renderer/u;

.field private D:Z

.field private E:Landroid/graphics/Bitmap;

.field private final F:Lcom/tencent/liteav/base/a/a;

.field private G:Lcom/tencent/liteav/videoconsumer/renderer/a;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Ljava/lang/String;

.field public final b:Lcom/tencent/liteav/videobase/utils/f;

.field public volatile c:Z

.field public d:Z

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final g:Lcom/tencent/liteav/videobase/videobase/c;

.field private final h:Lcom/tencent/liteav/base/util/m;

.field private final i:Lcom/tencent/liteav/base/util/m;

.field private final j:Lcom/tencent/liteav/base/a/b;

.field private final k:Lcom/tencent/liteav/base/util/Size;

.field private l:Landroid/view/Surface;

.field private m:Z

.field private n:Ljava/lang/Object;

.field private o:Lcom/tencent/liteav/videobase/egl/EGLCore;

.field private final p:Lcom/tencent/liteav/videobase/frame/c;

.field private q:Lcom/tencent/liteav/videobase/frame/i;

.field private r:Lcom/tencent/liteav/videobase/frame/e;

.field private s:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field private t:Lcom/tencent/liteav/base/util/l;

.field private u:Z

.field private v:Z

.field private w:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

.field private x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

.field private final y:Lcom/tencent/liteav/base/util/Size;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/t;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "VideoRenderer_"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->e:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v0, Lcom/tencent/liteav/base/util/m;

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/m;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->i:Lcom/tencent/liteav/base/util/m;

    .line 42
    .line 43
    new-instance v0, Lcom/tencent/liteav/base/a/b;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/tencent/liteav/base/a/b;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    .line 49
    .line 50
    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->m:Z

    .line 62
    .line 63
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    .line 64
    .line 65
    new-instance v2, Lcom/tencent/liteav/videobase/frame/c;

    .line 66
    .line 67
    invoke-direct {v2}, Lcom/tencent/liteav/videobase/frame/c;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->p:Lcom/tencent/liteav/videobase/frame/c;

    .line 71
    .line 72
    new-instance v2, Lcom/tencent/liteav/videobase/utils/f;

    .line 73
    .line 74
    invoke-direct {v2}, Lcom/tencent/liteav/videobase/utils/f;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->b:Lcom/tencent/liteav/videobase/utils/f;

    .line 78
    .line 79
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 80
    .line 81
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->s:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 82
    .line 83
    sget-object v2, Lcom/tencent/liteav/base/util/l;->a:Lcom/tencent/liteav/base/util/l;

    .line 84
    .line 85
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->t:Lcom/tencent/liteav/base/util/l;

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->u:Z

    .line 88
    .line 89
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->v:Z

    .line 90
    .line 91
    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    .line 92
    .line 93
    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->y:Lcom/tencent/liteav/base/util/Size;

    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->c:Z

    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->d:Z

    .line 101
    .line 102
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->z:Z

    .line 103
    .line 104
    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    .line 105
    .line 106
    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->A:Lcom/tencent/liteav/base/util/Size;

    .line 110
    .line 111
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->D:Z

    .line 112
    .line 113
    new-instance v1, Lcom/tencent/liteav/base/a/a;

    .line 114
    .line 115
    const-wide/16 v2, 0x1388

    .line 116
    .line 117
    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/base/a/a;-><init>(J)V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->F:Lcom/tencent/liteav/base/a/a;

    .line 121
    .line 122
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    .line 123
    .line 124
    invoke-direct {v1, p1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->f:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->h:Lcom/tencent/liteav/base/util/m;

    .line 130
    .line 131
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->g:Lcom/tencent/liteav/videobase/videobase/c;

    .line 132
    .line 133
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->E:Landroid/graphics/Bitmap;

    .line 167
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->E:Landroid/graphics/Bitmap;

    .line 168
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 169
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    const-string v2, "uninitGL"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v0

    const/4 v3, 0x1

    aput-object v4, v5, v3

    .line 52
    const-string v3, "uninitializeEGL %d %s"

    invoke-static {v1, v2, v3, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 54
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    const-string v3, "makeCurrentError"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "uninitializeEGL EGLCore makeCurrent failed."

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 56
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/i;

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/i;->a()V

    .line 58
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/i;

    .line 59
    :cond_2
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/a/a;->b()V

    .line 61
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    .line 62
    :cond_3
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->q:Lcom/tencent/liteav/videobase/frame/i;

    if-eqz v0, :cond_5

    .line 64
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/i;->a()V

    .line 65
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->q:Lcom/tencent/liteav/videobase/frame/i;

    .line 66
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->p:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/c;->d()V

    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->r:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_6

    .line 68
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 69
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->r:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 70
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->r:Lcom/tencent/liteav/videobase/frame/e;

    .line 71
    :cond_6
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->destroy(Lcom/tencent/liteav/videobase/egl/EGLCore;)V

    .line 72
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    return-void
.end method

.method private a(Landroid/view/Surface;Z)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string p2, "updateSurface same surface!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a()V

    .line 153
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 155
    :cond_1
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    if-nez p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    .line 157
    :cond_2
    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->m:Z

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 8

    .line 94
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->s:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->A:Lcom/tencent/liteav/base/util/Size;

    .line 96
    invoke-virtual {v2}, Lcom/tencent/liteav/base/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->A:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v3}, Lcom/tencent/liteav/base/util/Size;->getHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->z:Z

    .line 97
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->updateVideoFrameInfo(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;IIZ)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    instance-of v0, v0, Lcom/tencent/liteav/videoconsumer/renderer/k;

    if-eqz v0, :cond_2

    sget-object p2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->H:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->I:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_c

    if-eqz v1, :cond_c

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 103
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 104
    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/a;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->r:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    iget v6, v5, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-direct {v0, v4, v6, v5}, Lcom/tencent/liteav/videoconsumer/renderer/a;-><init>(Lcom/tencent/liteav/videobase/frame/e;II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    .line 105
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->H:Ljava/util/List;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->I:Ljava/util/List;

    .line 106
    iput-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->i:Ljava/util/List;

    .line 107
    iput-object v5, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->j:Ljava/util/List;

    .line 108
    iput-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v0, :cond_4

    .line 110
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    iget v6, v5, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->height:I

    .line 111
    invoke-virtual {v0, v6, v5}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->getTransformMatrix(II)Landroid/graphics/Matrix;

    move-result-object v0

    .line 112
    iget-object v5, v4, Lcom/tencent/liteav/videoconsumer/renderer/a;->h:Landroid/graphics/Matrix;

    invoke-static {v5, v0}, Lcom/tencent/liteav/base/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 113
    iput-object v0, v4, Lcom/tencent/liteav/videoconsumer/renderer/a;->h:Landroid/graphics/Matrix;

    .line 114
    iput-boolean v1, v4, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    iget v5, v4, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->height:I

    .line 116
    iget-object v6, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v7, v6, Lcom/tencent/liteav/base/util/Size;->width:I

    if-ne v7, v5, :cond_5

    iget v7, v6, Lcom/tencent/liteav/base/util/Size;->height:I

    if-eq v7, v4, :cond_6

    .line 117
    :cond_5
    invoke-virtual {v6, v5, v4}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    .line 118
    iput-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    .line 120
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 121
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/i;

    if-nez v1, :cond_7

    .line 122
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create PixelFrameRenderer, size ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/tencent/liteav/videobase/frame/i;

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v5, v4, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-direct {v1, v5, v4}, Lcom/tencent/liteav/videobase/frame/i;-><init>(II)V

    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/i;

    .line 124
    :cond_7
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v4, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-static {v3, v3, v4, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 125
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->c:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v5, v4, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v1, v5, v4}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v1

    .line 126
    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/i;

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v6, v5, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v4, v6, v5}, Lcom/tencent/liteav/videobase/frame/i;->a(II)V

    .line 127
    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/i;

    invoke-virtual {v4, p1, p2, v1}, Lcom/tencent/liteav/videobase/frame/i;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 128
    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    if-nez p1, :cond_9

    if-nez p1, :cond_9

    .line 129
    new-instance p1, Lcom/tencent/liteav/videobase/b/b;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/b/b;-><init>()V

    iput-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    .line 130
    iget-object p2, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->c:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/a/a;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 131
    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->e:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_8

    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->f:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_9

    .line 132
    :cond_8
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createNormalCubeVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->e:Ljava/nio/FloatBuffer;

    .line 133
    sget-object p1, Lcom/tencent/liteav/base/util/l;->a:Lcom/tencent/liteav/base/util/l;

    .line 134
    invoke-static {p1, v3, v3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTextureCoordsBuffer(Lcom/tencent/liteav/base/util/l;ZZ)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->f:Ljava/nio/FloatBuffer;

    .line 135
    :cond_9
    iget-boolean p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    if-eqz p1, :cond_a

    .line 136
    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->i:Ljava/util/List;

    iget-object p2, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->j:Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/a;->a(Ljava/util/List;Ljava/util/List;)V

    .line 137
    iput-boolean v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    .line 138
    :cond_a
    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result p2

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->e:Ljava/nio/FloatBuffer;

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2, v2, v3, v0}, Lcom/tencent/liteav/videobase/a/a;->a(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 139
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->release()V

    :cond_b
    :goto_0
    return-void

    .line 140
    :cond_c
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    iget v1, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-static {v3, v3, v1, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 141
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->q:Lcom/tencent/liteav/videobase/frame/i;

    if-nez v0, :cond_d

    .line 142
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "create PixelFrameRenderer, surfaceSize="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/tencent/liteav/videobase/frame/i;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    iget v3, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-direct {v0, v3, v1}, Lcom/tencent/liteav/videobase/frame/i;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->q:Lcom/tencent/liteav/videobase/frame/i;

    .line 144
    :cond_d
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->q:Lcom/tencent/liteav/videobase/frame/i;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    iget v3, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v0, v3, v1}, Lcom/tencent/liteav/videobase/frame/i;->a(II)V

    .line 145
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->q:Lcom/tencent/liteav/videobase/frame/i;

    invoke-virtual {v0, p1, p2, v2}, Lcom/tencent/liteav/videobase/frame/i;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/v;)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceDestroy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 171
    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->m:Z

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/v;Landroid/view/Surface;Z)V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    .line 162
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v2, v3, v1

    .line 163
    const-string v1, "onSurfaceChanged surface: %s, oldSurface: %s, isNeedRelease: %b"

    invoke-static {v0, v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/v;Lcom/tencent/liteav/base/util/l;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->t:Lcom/tencent/liteav/base/util/l;

    if-eq v0, p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setRenderRotation "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->t:Lcom/tencent/liteav/base/util/l;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/v;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->s:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-eq v0, p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setScaleType "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->s:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/v;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/v;->b(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/v;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;Ljava/nio/ByteBuffer;IILcom/tencent/liteav/videobase/base/a;)V
    .locals 2

    .line 146
    instance-of v0, p1, Lcom/tencent/liteav/videoconsumer/renderer/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a()Landroid/view/TextureView;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 149
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->i:Lcom/tencent/liteav/base/util/m;

    move-object p1, p2

    move p2, p3

    move p3, p4

    move-object p4, v1

    invoke-static/range {p0 .. p5}, Lcom/tencent/liteav/videoconsumer/renderer/ac;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;Lcom/tencent/liteav/videobase/base/a;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/base/util/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/v;Lcom/tencent/liteav/videoconsumer/renderer/u;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string p1, "renderer is started!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->c:Z

    .line 5
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->C:Lcom/tencent/liteav/videoconsumer/renderer/u;

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->w:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->b(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->F:Lcom/tencent/liteav/base/a/a;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/base/a/a;->a:J

    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/v;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;Lcom/tencent/liteav/videobase/base/a;)V
    .locals 2

    const/4 v0, 0x0

    .line 172
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-nez p4, :cond_0

    .line 175
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    int-to-float p3, p3

    div-float/2addr p3, p2

    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 176
    invoke-virtual {p4, p2, v1, p1, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 p1, 0x1

    .line 177
    invoke-static {v0, p4, p1}, Lcom/tencent/liteav/videobase/utils/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 178
    invoke-interface {p5, p1}, Lcom/tencent/liteav/videobase/base/a;->onComplete(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 179
    :goto_1
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string p2, "build snapshot bitmap failed."

    invoke-static {p0, p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 180
    invoke-interface {p5, p0}, Lcom/tencent/liteav/videobase/base/a;->onComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/v;Z)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string v1, "Stop,clearLastImage="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->c:Z

    if-nez v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string p1, "renderer is not started!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->c:Z

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->B:Lcom/tencent/liteav/videobase/base/a;

    .line 15
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Z)V

    .line 16
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->w:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->hideAll()V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->b:Lcom/tencent/liteav/videobase/utils/f;

    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/tencent/liteav/videobase/utils/f;->a:Ljava/util/Deque;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    iget-object v3, p1, Lcom/tencent/liteav/videobase/utils/f;->a:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const-string p1, "RingFrameQueue"

    const-string v3, "evictAll pixelFrame."

    invoke-static {p1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    .line 25
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a()V

    .line 26
    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->m:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 28
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->m:Z

    .line 29
    :cond_2
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    .line 30
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    .line 31
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->y:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    .line 32
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->d:Z

    return-void

    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->release(Z)V

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    :cond_0
    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z
    .locals 5

    .line 73
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->n:Ljava/lang/Object;

    .line 75
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a()V

    .line 77
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 79
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    const-string v0, "initGLNoSurface"

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string v1, "Initialize EGL failed because surface is null"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 80
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    const-string v1, "initGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initializeEGL surface="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    new-instance v0, Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    .line 82
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    iget v4, v3, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v0, p1, v1, v4, v3}, Lcom/tencent/liteav/videobase/egl/EGLCore;->initialize(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 83
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->n:Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V

    .line 85
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->r:Lcom/tencent/liteav/videobase/frame/e;

    if-nez p1, :cond_2

    .line 86
    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->r:Lcom/tencent/liteav/videobase/frame/e;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->p:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    const-string v1, "initGLError"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string v3, "initializeEGL failed."

    invoke-static {v0, v1, v3, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    .line 90
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/e$c;->a:Lcom/tencent/liteav/videobase/videobase/e$c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez p1, :cond_4

    return v2

    .line 92
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_1
    .catch Lcom/tencent/liteav/videobase/egl/d; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    .line 93
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    const-string v1, "makeCurrentForFrameError"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "EGLCore makeCurrent failed."

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private b()V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getSurfaceSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    const-string v2, "updateSurfaceSize"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "surface size changed,old size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",new size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/util/Size;->set(Lcom/tencent/liteav/base/util/Size;)V

    .line 17
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->l:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 18
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/f;->a:Lcom/tencent/liteav/videobase/videobase/f;

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    iget v1, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisplayViewInternal="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",clearLastImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->w:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string p2, "view is equal and RenderViewHelper is created."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->D:Z

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->w:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->hideAll()V

    .line 8
    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Z)V

    .line 9
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->w:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-nez p1, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->showAll()V

    .line 11
    invoke-static {p1, p0}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->create(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;)Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    return-void
.end method

.method public static synthetic b(Lcom/tencent/liteav/videoconsumer/renderer/v;)V
    .locals 2

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->createFromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 22
    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->b()V

    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 24
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->s:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    .line 25
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->c()Z

    return-void
.end method

.method public static synthetic c(Lcom/tencent/liteav/videoconsumer/renderer/v;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->b:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/f;->a()Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string v0, "renderFrameInternal pixelFrame is null!"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->y:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    .line 4
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getRenderRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->t:Lcom/tencent/liteav/base/util/l;

    .line 6
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isRenderMirrorHorizontal()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->u:Z

    .line 7
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isRenderMirrorVertical()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->v:Z

    .line 8
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->y:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getCaptureRealSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/base/util/Size;->set(Lcom/tencent/liteav/base/util/Size;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->F:Lcom/tencent/liteav/base/a/a;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->checkViewAvailability()V

    .line 11
    :cond_2
    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->z:Z

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v1, :cond_3

    .line 13
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->s:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 14
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    iget-boolean p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->z:Z

    .line 15
    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->updateVideoFrameInfo(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;IIZ)V

    .line 16
    :cond_3
    sget p0, Lcom/tencent/liteav/videoconsumer/renderer/u$a;->a:I

    goto/16 :goto_1

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-nez v1, :cond_5

    .line 18
    sget p0, Lcom/tencent/liteav/videoconsumer/renderer/u$a;->a:I

    goto/16 :goto_1

    .line 19
    :cond_5
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 20
    sget v1, Lcom/tencent/liteav/videoconsumer/renderer/u$a;->a:I

    .line 21
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    const-string v3, "makeCurrent"

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object v1

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string v3, "make current failed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 22
    :cond_6
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->b()V

    .line 23
    new-instance v1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 24
    iget-boolean v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->u:Z

    iget-boolean v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->v:Z

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->t:Lcom/tencent/liteav/base/util/l;

    .line 25
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object v6

    .line 26
    iget v6, v6, Lcom/tencent/liteav/base/util/l;->mValue:I

    .line 27
    iget v7, v5, Lcom/tencent/liteav/base/util/l;->mValue:I

    add-int/2addr v6, v7

    .line 28
    rem-int/lit16 v6, v6, 0x168

    .line 29
    invoke-static {v6}, Lcom/tencent/liteav/base/util/l;->a(I)Lcom/tencent/liteav/base/util/l;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/l;)V

    if-eqz v3, :cond_7

    .line 30
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    :cond_7
    if-eqz v4, :cond_8

    .line 31
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 32
    :cond_8
    sget-object v3, Lcom/tencent/liteav/base/util/l;->b:Lcom/tencent/liteav/base/util/l;

    if-eq v5, v3, :cond_9

    sget-object v3, Lcom/tencent/liteav/base/util/l;->d:Lcom/tencent/liteav/base/util/l;

    if-ne v5, v3, :cond_a

    .line 33
    :cond_9
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    .line 34
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 35
    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    .line 36
    :cond_a
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 37
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object v3

    sget-object v4, Lcom/tencent/liteav/base/util/l;->a:Lcom/tencent/liteav/base/util/l;

    if-eq v3, v4, :cond_b

    .line 38
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object v3

    sget-object v4, Lcom/tencent/liteav/base/util/l;->c:Lcom/tencent/liteav/base/util/l;

    if-eq v3, v4, :cond_b

    .line 39
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/l;

    move-result-object v3

    .line 40
    iget v3, v3, Lcom/tencent/liteav/base/util/l;->mValue:I

    .line 41
    iget v4, v4, Lcom/tencent/liteav/base/util/l;->mValue:I

    add-int/2addr v3, v4

    .line 42
    rem-int/lit16 v3, v3, 0x168

    .line 43
    invoke-static {v3}, Lcom/tencent/liteav/base/util/l;->a(I)Lcom/tencent/liteav/base/util/l;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/l;)V

    .line 44
    :cond_b
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->A:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/tencent/liteav/base/util/Size;->width:I

    .line 45
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->A:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/tencent/liteav/base/util/Size;->height:I

    .line 46
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->s:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-direct {p0, v1, v3}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    .line 47
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->B:Lcom/tencent/liteav/videobase/base/a;

    if-eqz v1, :cond_c

    const v1, 0x8d40

    .line 48
    invoke-static {v1, v2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->bindFramebuffer(II)V

    .line 49
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->k:Lcom/tencent/liteav/base/util/Size;

    iget v5, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v6, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    .line 50
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->B:Lcom/tencent/liteav/videobase/base/a;

    if-eqz v1, :cond_c

    const/4 v3, 0x0

    .line 51
    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->B:Lcom/tencent/liteav/videobase/base/a;

    mul-int v4, v5, v6

    mul-int/lit8 v4, v4, 0x4

    .line 52
    invoke-static {v4}, Lcom/tencent/liteav/videobase/utils/d;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    if-nez v9, :cond_d

    .line 53
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string v5, "snapshotVideoFrameFromFrameBuffer, allocate direct buffer failed."

    invoke-static {v4, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v1, v3}, Lcom/tencent/liteav/videobase/base/a;->onComplete(Landroid/graphics/Bitmap;)V

    :cond_c
    move-object v3, p0

    goto :goto_0

    .line 55
    :cond_d
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 58
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->x:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    .line 59
    iget-object v10, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->e:Landroid/os/Handler;

    move-object v3, p0

    move-object v8, v1

    move v7, v6

    move v6, v5

    move-object v5, v9

    invoke-static/range {v3 .. v8}, Lcom/tencent/liteav/videoconsumer/renderer/y;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;Ljava/nio/ByteBuffer;IILcom/tencent/liteav/videobase/base/a;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v10, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :goto_0
    invoke-direct {v3}, Lcom/tencent/liteav/videoconsumer/renderer/v;->c()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->getGLErrorCount()I

    move-result p0

    if-gtz p0, :cond_e

    .line 61
    sget p0, Lcom/tencent/liteav/videoconsumer/renderer/u$a;->a:I

    .line 62
    iget-boolean p0, v3, Lcom/tencent/liteav/videoconsumer/renderer/v;->D:Z

    if-eqz p0, :cond_f

    .line 63
    sget-object p0, Lcom/tencent/liteav/videobase/videobase/e$b;->a:Lcom/tencent/liteav/videobase/videobase/e$b;

    .line 64
    iput-boolean v2, v3, Lcom/tencent/liteav/videoconsumer/renderer/v;->D:Z

    goto :goto_1

    .line 65
    :cond_e
    sget p0, Lcom/tencent/liteav/videoconsumer/renderer/u$a;->a:I

    .line 66
    iget-object p0, v3, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    const-string v1, "renderFailed"

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object p0

    iget-object v1, v3, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    const-string v3, "render frame failed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_f
    :goto_1
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method private c()Z
    .locals 6

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->o:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->swapBuffers()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/d; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->j:Lcom/tencent/liteav/base/a/b;

    const-string v2, "swapBuffers"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EGLCore swapBuffers failed."

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    sget-object v1, Lcom/tencent/liteav/videobase/videobase/e$c;->a:Lcom/tencent/liteav/videobase/videobase/e$c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return v4
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/base/util/l;)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ag;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;Lcom/tencent/liteav/base/util/l;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/af;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/ae;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->h:Lcom/tencent/liteav/base/util/m;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/m;->a(Ljava/lang/Runnable;)V

    return-void

    .line 46
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->f:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 47
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->f:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onRequestRedraw(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/aa;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;)Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/z;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;Landroid/view/Surface;Z)Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSurfaceDestroy()V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/ab;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;)Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->h:Lcom/tencent/liteav/base/util/m;

    .line 6
    .line 7
    const-wide/16 v2, 0x7d0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v4}, Lcom/tencent/liteav/base/util/o;->a(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, v1, Lcom/tencent/liteav/base/util/m;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    invoke-virtual {v4, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->f:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-ne v1, v4, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/v;->f:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 57
    .line 58
    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/liteav/base/util/CustomHandler;->runAndWaitDone(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method
