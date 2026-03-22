.class final Lcom/tencent/liteav/a$a;
.super Landroid/os/Handler;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/a$a;->a:Lcom/tencent/liteav/a;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/a$a;->a:Lcom/tencent/liteav/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/liteav/a;->w(Lcom/tencent/liteav/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/a$a;->a:Lcom/tencent/liteav/a;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/tencent/liteav/a;->x(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/tencent/liteav/a$a;->a:Lcom/tencent/liteav/a;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroid/os/Message;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 28
    .line 29
    .line 30
    const-wide/16 v0, 0x1e

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
