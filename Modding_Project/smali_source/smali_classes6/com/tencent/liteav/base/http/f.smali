.class final synthetic Lcom/tencent/liteav/base/http/f;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/base/http/HttpClientAndroid;

.field private final b:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$f;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/base/http/f;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/liteav/base/http/f;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/tencent/liteav/base/http/f;->c:J

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$f;J)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/http/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/liteav/base/http/f;-><init>(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$f;J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/f;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/base/http/f;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/tencent/liteav/base/http/f;->c:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->lambda$doReadData$5(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$f;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
