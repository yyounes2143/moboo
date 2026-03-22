.class final Lcom/mbridge/msdk/tracker/s$a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/mbridge/msdk/tracker/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/tracker/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/mbridge/msdk/tracker/s;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/mbridge/msdk/tracker/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/tracker/s$a;->a:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/tracker/t;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/t;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/tracker/s;->a(Lcom/mbridge/msdk/tracker/s;Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/s;->j(Lcom/mbridge/msdk/tracker/s;)V

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/tracker/s;->a(Lcom/mbridge/msdk/tracker/s;J)J

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s$a;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/s;->b(Lcom/mbridge/msdk/tracker/s;)Lcom/mbridge/msdk/tracker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/t;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/s;->d(Lcom/mbridge/msdk/tracker/s;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/s;->e(Lcom/mbridge/msdk/tracker/s;)Lcom/mbridge/msdk/tracker/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/c;->b()I

    :cond_1
    return-void
.end method

.method public a(Lcom/mbridge/msdk/tracker/t;ILjava/lang/String;)V
    .locals 5

    .line 8
    iget-object p2, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/t;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lcom/mbridge/msdk/tracker/s;->a(Lcom/mbridge/msdk/tracker/s;Ljava/util/List;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/mbridge/msdk/tracker/s;->a(Lcom/mbridge/msdk/tracker/s;J)J

    .line 10
    iget-object p2, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-static {p2}, Lcom/mbridge/msdk/tracker/s;->c(Lcom/mbridge/msdk/tracker/s;)I

    move-result p2

    const/16 p3, 0xa

    if-gt p2, p3, :cond_0

    .line 11
    iget-object p3, p0, Lcom/mbridge/msdk/tracker/s$a;->a:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object p3, p0, Lcom/mbridge/msdk/tracker/s$a;->a:Landroid/os/Handler;

    invoke-static {p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p2

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13
    :cond_0
    sget-boolean p2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz p2, :cond_1

    .line 14
    iget-object p2, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-static {p2}, Lcom/mbridge/msdk/tracker/s;->b(Lcom/mbridge/msdk/tracker/s;)Lcom/mbridge/msdk/tracker/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/t;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/s;->d(Lcom/mbridge/msdk/tracker/s;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/s$a;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/s;->e(Lcom/mbridge/msdk/tracker/s;)Lcom/mbridge/msdk/tracker/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/c;->b()I

    :cond_1
    return-void
.end method
