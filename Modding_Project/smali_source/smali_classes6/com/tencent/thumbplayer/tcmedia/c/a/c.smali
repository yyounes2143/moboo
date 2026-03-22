.class public Lcom/tencent/thumbplayer/tcmedia/c/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/ITPAssetResourceLoadingDataRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/c/a/c$a;,
        Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "TPAssetResourceLoadingDataRequest"


# instance fields
.field private b:J

.field private c:J

.field private d:Z

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;

.field private j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

.field private k:Ljava/lang/String;

.field private l:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(JJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->b:J

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->f:J

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->e:J

    .line 9
    .line 10
    iput-wide p3, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->c:J

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->d:Z

    .line 13
    .line 14
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/m;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/c/a/c;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->e:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/c/a/c;)Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->k:Ljava/lang/String;

    return-object p0
.end method

.method private a(IIILjava/lang/Object;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->i:Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->i:Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(J[BLjava/lang/String;)Z
    .locals 3

    .line 9
    const-string v0, "fail to close mRandomAccessFile"

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p4, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->l:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    :try_start_2
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    const-string p2, "fail to write data"

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->l:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_1

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    :try_start_4
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    const-string p2, "file not found"

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->l:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 p1, 0x0

    :goto_3
    return p1

    :goto_4
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->l:Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_2

    :try_start_5
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    sget-object p2, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_5
    throw p1
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/c/a/c;J[BLjava/lang/String;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a(J[BLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/tencent/thumbplayer/tcmedia/c/a/c;)Lcom/tencent/thumbplayer/tcmedia/utils/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    return-object p0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->h:I

    return v0
.end method

.method public a(J)I
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->e:J

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-ltz v2, :cond_0

    return v3

    :cond_0
    iget-wide v4, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->b:J

    cmp-long v2, p1, v4

    if-gez v2, :cond_1

    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    const-string p2, "Offset less than mRequestedOffset"

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public a(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->h:I

    return-void
.end method

.method public a(Landroid/os/Looper;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/a/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->i:Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->k:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->i:Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->i:Lcom/tencent/thumbplayer/tcmedia/c/a/c$b;

    :cond_0
    return-void
.end method

.method public getCurrentOffset()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->f:J

    .line 11
    .line 12
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 19
    .line 20
    .line 21
    return-wide v0
.end method

.method public getRequestedLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRequestedOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public notifyDataReady(JJ)V
    .locals 4

    .line 1
    add-long/2addr p3, p1

    .line 2
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->b:J

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->c:J

    .line 5
    .line 6
    add-long/2addr v2, v0

    .line 7
    cmp-long v2, p3, v2

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string p2, "data exceed the max request offset"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    cmp-long p1, p1, v0

    .line 20
    .line 21
    if-gez p1, :cond_1

    .line 22
    .line 23
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    .line 24
    .line 25
    const-string p2, "the notify data offset is less than request offset"

    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->f:J

    .line 31
    .line 32
    cmp-long p1, p3, p1

    .line 33
    .line 34
    if-gez p1, :cond_2

    .line 35
    .line 36
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    .line 37
    .line 38
    const-string p2, "data not reach current offset"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 51
    .line 52
    .line 53
    iput-wide p3, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->f:J

    .line 54
    .line 55
    iput-wide p3, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->e:J

    .line 56
    .line 57
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public respondWithData([B)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->g:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->c:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "respond full data"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    array-length v0, p1

    .line 18
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/c/a/c$a;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/c/a/c$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/a/c$1;)V

    .line 22
    .line 23
    .line 24
    iget-wide v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->f:J

    .line 25
    .line 26
    iput-wide v2, v1, Lcom/tencent/thumbplayer/tcmedia/c/a/c$a;->a:J

    .line 27
    .line 28
    iput-object p1, v1, Lcom/tencent/thumbplayer/tcmedia/c/a/c$a;->b:[B

    .line 29
    .line 30
    const/16 p1, 0x100

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a(IIILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "respond data from:"

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-wide v2, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->f:J

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, ", dataLength:"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 72
    .line 73
    .line 74
    iget-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->f:J

    .line 75
    .line 76
    int-to-long v3, v0

    .line 77
    add-long/2addr v1, v3

    .line 78
    iput-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->f:J

    .line 79
    .line 80
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->g:J

    .line 81
    .line 82
    add-long/2addr v0, v3

    .line 83
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->g:J

    .line 84
    .line 85
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->j:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
