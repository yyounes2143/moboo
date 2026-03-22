.class public final Lcom/tencent/liteav/videobase/frame/k$b;
.super Lcom/tencent/liteav/videobase/frame/d;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videobase/frame/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field private e:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

.field private f:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

.field private g:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/frame/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/g<",
            "+",
            "Lcom/tencent/liteav/videobase/frame/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videobase/frame/d;-><init>(Lcom/tencent/liteav/videobase/frame/g;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/k$b;->a:I

    .line 6
    .line 7
    const/16 p1, 0xde1

    .line 8
    .line 9
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/k$b;->b:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/k$b;->c:I

    .line 13
    .line 14
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/k$b;->d:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->a:I

    return v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 2

    .line 2
    new-instance v0, Lcom/tencent/liteav/videobase/frame/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/tencent/liteav/videobase/frame/k$a;-><init>(Lcom/tencent/liteav/videobase/frame/k$b;Ljava/lang/Object;B)V

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()Lcom/tencent/liteav/videobase/frame/FrameMetaData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->e:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->a:I

    .line 3
    .line 4
    const/16 v0, 0xde1

    .line 5
    .line 6
    iput v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->b:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->c:I

    .line 10
    .line 11
    iput v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->d:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->e:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->g:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/k$b;->f:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    .line 19
    .line 20
    return-void
.end method
