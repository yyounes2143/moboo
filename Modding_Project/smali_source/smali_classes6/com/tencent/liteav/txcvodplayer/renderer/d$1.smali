.class public final Lcom/tencent/liteav/txcvodplayer/renderer/d$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/renderer/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/renderer/d;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/renderer/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string v0, "VodRenderer"

    .line 2
    .line 3
    const-string v1, "uninitialize VodRenderer"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->d(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->e(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->f(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/base/util/CustomHandler;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->f(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/base/util/CustomHandler;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/CustomHandler;->quitLooper()V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/base/util/CustomHandler;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw v1
.end method
