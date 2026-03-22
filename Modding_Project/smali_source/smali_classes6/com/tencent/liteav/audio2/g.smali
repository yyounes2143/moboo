.class final synthetic Lcom/tencent/liteav/audio2/g;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Lcom/tencent/liteav/audio2/e;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/audio2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/audio2/g;->a:Lcom/tencent/liteav/audio2/e;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/tencent/liteav/audio2/e;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/audio2/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio2/g;-><init>(Lcom/tencent/liteav/audio2/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio2/g;->a:Lcom/tencent/liteav/audio2/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/tencent/liteav/audio2/e;->a(Lcom/tencent/liteav/audio2/e;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
