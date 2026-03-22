.class final Lcom/tencent/rtmp/ui/TXCloudVideoView$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/ui/TXCloudVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/ui/TXCloudVideoView;


# direct methods
.method public constructor <init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$200(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onSurfaceTextureAvailable: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "x"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$302(Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$402(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)I

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 52
    .line 53
    invoke-static {p1, p3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$502(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)I

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$600(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView$SurfaceTextureListener;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$600(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView$SurfaceTextureListener;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 71
    .line 72
    invoke-static {p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$300(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/graphics/SurfaceTexture;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget-object p3, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 77
    .line 78
    invoke-static {p3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$400(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-interface {p1, p2, p3, v0}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    :goto_0
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p1
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$200(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onSurfaceTextureDestroyed: "

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$300(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/graphics/SurfaceTexture;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {v0, v2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$302(Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v0, v2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$402(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)I

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 48
    .line 49
    invoke-static {v0, v2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$502(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$600(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView$SurfaceTextureListener;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$600(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView$SurfaceTextureListener;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    monitor-exit p0

    .line 73
    return v1

    .line 74
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$300(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/graphics/SurfaceTexture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 16
    .line 17
    invoke-static {v0, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$402(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 21
    .line 22
    invoke-static {v0, p3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$502(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$600(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView$SurfaceTextureListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$600(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView$SurfaceTextureListener;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$300(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/graphics/SurfaceTexture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$600(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView$SurfaceTextureListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$600(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView$SurfaceTextureListener;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method
