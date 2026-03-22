.class public Lcom/tencent/liteav/videoconsumer/consumer/NativeSnapshotListener;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/videobase/base/a;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mNativeVideoSnapListener:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/NativeSnapshotListener;->mNativeVideoSnapListener:J

    .line 5
    .line 6
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeOnComplete(JLandroid/graphics/Bitmap;)V
.end method


# virtual methods
.method public finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/NativeSnapshotListener;->mNativeVideoSnapListener:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/consumer/NativeSnapshotListener;->nativeDestroy(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/NativeSnapshotListener;->mNativeVideoSnapListener:J

    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/NativeSnapshotListener;->mNativeVideoSnapListener:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videoconsumer/consumer/NativeSnapshotListener;->nativeOnComplete(JLandroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/NativeSnapshotListener;->mNativeVideoSnapListener:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method
