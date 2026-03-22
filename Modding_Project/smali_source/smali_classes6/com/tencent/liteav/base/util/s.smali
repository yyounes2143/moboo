.class public final Lcom/tencent/liteav/base/util/s;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static a:Z

.field private static final b:Lcom/tencent/liteav/base/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/liteav/base/util/a<",
            "Lcom/tencent/liteav/base/util/CpuUsageMeasurer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/util/a;

    .line 2
    .line 3
    invoke-static {}, Lcom/tencent/liteav/base/util/t;->b()Lcom/tencent/liteav/base/util/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/a;-><init>(Lcom/tencent/liteav/base/util/a$a;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/tencent/liteav/base/util/s;->b:Lcom/tencent/liteav/base/util/a;

    .line 11
    .line 12
    return-void
.end method

.method public static a()[I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/tencent/liteav/base/util/s;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/liteav/base/util/s;->a:Z

    .line 7
    .line 8
    sget-object v1, Lcom/tencent/liteav/base/util/s;->b:Lcom/tencent/liteav/base/util/a;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/a;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/tencent/liteav/base/util/CpuUsageMeasurer;->a()[I

    .line 14
    .line 15
    .line 16
    filled-new-array {v0, v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    sget-object v0, Lcom/tencent/liteav/base/util/s;->b:Lcom/tencent/liteav/base/util/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/a;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/tencent/liteav/base/util/CpuUsageMeasurer;->a()[I

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
