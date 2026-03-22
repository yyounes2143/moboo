.class Lcom/tencent/thumbplayer/tcmedia/g/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/g/b/f;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)Landroid/media/MediaCodec;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)Landroid/media/MediaCodec;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_1
    move-exception v0

    .line 23
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)Landroid/media/MediaCodec;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 30
    .line 31
    .line 32
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->b(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "recycle codec ignore error,"

    .line 40
    .line 41
    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->c(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)Lcom/tencent/thumbplayer/tcmedia/g/a/a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b/f$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->c(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)Lcom/tencent/thumbplayer/tcmedia/g/a/a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/g/a/a;->onRealRelease()V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
