.class final synthetic Lcom/tencent/liteav/base/http/d;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/base/http/HttpClientAndroid;

.field private final b:J


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/base/http/HttpClientAndroid;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/base/http/d;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/tencent/liteav/base/http/d;->b:J

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lcom/tencent/liteav/base/http/HttpClientAndroid;J)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/http/d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/base/http/d;-><init>(Lcom/tencent/liteav/base/http/HttpClientAndroid;J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/d;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/tencent/liteav/base/http/d;->b:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->lambda$resumeRepeatDownload$3(Lcom/tencent/liteav/base/http/HttpClientAndroid;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
