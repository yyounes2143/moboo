.class public final synthetic Lcom/tencent/liteav/videoconsumer/renderer/w;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/v;

.field private final b:Lcom/tencent/liteav/videoconsumer/renderer/u;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/w;->a:Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/w;->b:Lcom/tencent/liteav/videoconsumer/renderer/u;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/v;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/renderer/w;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/v;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/w;->a:Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/w;->b:Lcom/tencent/liteav/videoconsumer/renderer/u;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;Lcom/tencent/liteav/videoconsumer/renderer/u;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
