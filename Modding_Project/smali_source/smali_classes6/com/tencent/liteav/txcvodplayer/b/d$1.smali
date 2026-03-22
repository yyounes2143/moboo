.class final Lcom/tencent/liteav/txcvodplayer/b/d$1;
.super Landroid/os/Handler;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/b/d;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/b/d;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/b/d$1;->a:Lcom/tencent/liteav/txcvodplayer/b/d;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/d$1;->a:Lcom/tencent/liteav/txcvodplayer/b/d;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/tencent/liteav/txcvodplayer/b/d;->c:Lcom/tencent/liteav/txcvodplayer/b/e;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 21
    .line 22
    invoke-interface {v1, v0, v2, p1}, Lcom/tencent/liteav/txcvodplayer/b/e;->a(Lcom/tencent/liteav/txcvodplayer/b/d;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-interface {v1, v0}, Lcom/tencent/liteav/txcvodplayer/b/e;->a(Lcom/tencent/liteav/txcvodplayer/b/d;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
