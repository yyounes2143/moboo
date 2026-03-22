.class public final synthetic Lcom/tencent/liteav/videoconsumer/renderer/ad;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/v;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/v;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->a:Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/v;Z)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/ad;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ad;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/v;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->a:Lcom/tencent/liteav/videoconsumer/renderer/v;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->b:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videoconsumer/renderer/v;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
