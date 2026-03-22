.class public final Lcom/tencent/thumbplayer/tcmedia/g/b$c;
.super Landroid/media/MediaCodec$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/tencent/thumbplayer/tcmedia/g/b;

.field private final b:Lcom/tencent/thumbplayer/tcmedia/g/b$a;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/g/b;Lcom/tencent/thumbplayer/tcmedia/g/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$c;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$c;->b:Lcom/tencent/thumbplayer/tcmedia/g/b$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$c;->b:Lcom/tencent/thumbplayer/tcmedia/g/b$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$c;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/g/b$a;->onError(Lcom/tencent/thumbplayer/tcmedia/g/b;Landroid/media/MediaCodec$CodecException;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$c;->b:Lcom/tencent/thumbplayer/tcmedia/g/b$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$c;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/g/b$a;->onInputBufferAvailable(Lcom/tencent/thumbplayer/tcmedia/g/b;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$c;->b:Lcom/tencent/thumbplayer/tcmedia/g/b$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$c;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/g/b$a;->onOutputBufferAvailable(Lcom/tencent/thumbplayer/tcmedia/g/b;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$c;->b:Lcom/tencent/thumbplayer/tcmedia/g/b$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$c;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/g/b$a;->onOutputFormatChanged(Lcom/tencent/thumbplayer/tcmedia/g/b;Landroid/media/MediaFormat;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
