.class final synthetic Lcom/tencent/liteav/sdkcommon/c;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/sdkcommon/DashboardManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/c;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/liteav/sdkcommon/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lcom/tencent/liteav/sdkcommon/DashboardManager;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/sdkcommon/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/sdkcommon/c;-><init>(Lcom/tencent/liteav/sdkcommon/DashboardManager;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/c;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/sdkcommon/c;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->lambda$removeDashboard$2(Lcom/tencent/liteav/sdkcommon/DashboardManager;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
