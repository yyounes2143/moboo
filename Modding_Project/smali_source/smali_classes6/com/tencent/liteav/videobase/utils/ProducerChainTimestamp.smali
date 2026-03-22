.class public Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public copy(Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 16
    .line 17
    return-void
.end method

.method public getCaptureTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getEncodeFinishTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getEncodeTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPreprocessTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public setCaptureTimestamp(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEncodeFinishTimestamp(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEncodeTimestamp(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPreprocessTimestamp(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
