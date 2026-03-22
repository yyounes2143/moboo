.class final synthetic Lcom/tencent/liteav/base/http/e;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/base/http/HttpClientAndroid;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/base/http/HttpClientAndroid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/base/http/e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/tencent/liteav/base/http/HttpClientAndroid;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/http/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/liteav/base/http/e;-><init>(Lcom/tencent/liteav/base/http/HttpClientAndroid;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->lambda$destroy$4(Lcom/tencent/liteav/base/http/HttpClientAndroid;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
