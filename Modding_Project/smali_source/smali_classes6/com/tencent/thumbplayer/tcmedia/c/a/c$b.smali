.class Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/c/a/c;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/c/a/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/c/a/c$a;

    .line 11
    .line 12
    iget-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/c/a/c$a;->a:J

    .line 13
    .line 14
    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/c/a/c$a;->b:[B

    .line 15
    .line 16
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 17
    .line 18
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    .line 19
    .line 20
    invoke-static {v3}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/c/a/c;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {v3, v1, v2, v0, v4}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/c/a/c;J[BLjava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->c()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "write data failed"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->b(Lcom/tencent/thumbplayer/tcmedia/c/a/c;)Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    .line 54
    .line 55
    int-to-long v3, p1

    .line 56
    add-long/2addr v3, v1

    .line 57
    invoke-static {v0, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/c/a/c;J)J

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->b(Lcom/tencent/thumbplayer/tcmedia/c/a/c;)Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->c()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v4, "write data from "

    .line 80
    .line 81
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " , with dataLength"

    .line 88
    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
