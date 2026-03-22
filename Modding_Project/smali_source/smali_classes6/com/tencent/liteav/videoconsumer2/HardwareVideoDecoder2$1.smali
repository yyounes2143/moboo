.class final Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$1;
.super Landroid/media/MediaCodec$Callback;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;->setCallback(Landroid/media/MediaCodec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$1;->a:Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$1;->a:Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;->access$200(Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$1;->a:Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;->access$000(Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;Landroid/media/MediaCodec;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$1;->a:Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;->access$100(Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$1;->a:Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;->access$300(Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
