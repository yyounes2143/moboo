.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/z;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/v;

.field private final b:Landroid/view/Surface;

.field private final c:Z


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/v;Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/z;->a:Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/z;->b:Landroid/view/Surface;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/tencent/liteav/videoconsumer/renderer/z;->c:Z

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/v;Landroid/view/Surface;Z)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/z;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/z;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/v;Landroid/view/Surface;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/z;->a:Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/z;->b:Landroid/view/Surface;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/z;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;Landroid/view/Surface;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
