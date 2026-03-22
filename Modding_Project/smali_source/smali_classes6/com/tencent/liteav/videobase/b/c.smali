.class public final synthetic Lcom/tencent/liteav/videobase/b/c;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videobase/b/b;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videobase/b/b;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/videobase/b/c;->a:Lcom/tencent/liteav/videobase/b/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/liteav/videobase/b/c;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/tencent/liteav/videobase/b/c;->c:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lcom/tencent/liteav/videobase/b/b;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/b/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videobase/b/c;-><init>(Lcom/tencent/liteav/videobase/b/b;Ljava/util/List;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/c;->a:Lcom/tencent/liteav/videobase/b/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videobase/b/c;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tencent/liteav/videobase/b/c;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videobase/b/b;->a(Lcom/tencent/liteav/videobase/b/b;Ljava/util/List;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
