.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/ac;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/v;

.field private final b:Ljava/nio/ByteBuffer;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Matrix;

.field private final f:Lcom/tencent/liteav/videobase/base/a;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/v;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;Lcom/tencent/liteav/videobase/base/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->a:Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->b:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    iput p3, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->e:Landroid/graphics/Matrix;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->f:Lcom/tencent/liteav/videobase/base/a;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/v;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;Lcom/tencent/liteav/videobase/base/a;)Ljava/lang/Runnable;
    .locals 7

    .line 1
    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/ac;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoconsumer/renderer/ac;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/v;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;Lcom/tencent/liteav/videobase/base/a;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->a:Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->b:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    iget v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->c:I

    .line 6
    .line 7
    iget v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->e:Landroid/graphics/Matrix;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/ac;->f:Lcom/tencent/liteav/videobase/base/a;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;Lcom/tencent/liteav/videobase/base/a;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
