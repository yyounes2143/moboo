.class final synthetic Lcom/tencent/liteav/sdkcommon/d;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/sdkcommon/DashboardManager;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/sdkcommon/DashboardManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/d;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/sdkcommon/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/liteav/sdkcommon/d;-><init>(Lcom/tencent/liteav/sdkcommon/DashboardManager;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/d;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->lambda$removeAllDashboard$3(Lcom/tencent/liteav/sdkcommon/DashboardManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
