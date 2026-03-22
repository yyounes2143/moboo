.class final synthetic Lcom/tencent/liteav/base/util/q;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/base/util/m$a;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/base/util/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/base/util/q;->a:Lcom/tencent/liteav/base/util/m$a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/tencent/liteav/base/util/m$a;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/liteav/base/util/q;-><init>(Lcom/tencent/liteav/base/util/m$a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/util/q;->a:Lcom/tencent/liteav/base/util/m$a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/tencent/liteav/base/util/m$a;->b:Lcom/tencent/liteav/base/util/m;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/tencent/liteav/base/util/m;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/tencent/liteav/base/util/m$a;->a:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
