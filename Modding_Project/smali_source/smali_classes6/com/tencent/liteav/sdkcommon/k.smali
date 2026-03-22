.class final synthetic Lcom/tencent/liteav/sdkcommon/k;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/tencent/liteav/sdkcommon/g;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/sdkcommon/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/k;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/tencent/liteav/sdkcommon/g;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/sdkcommon/k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/liteav/sdkcommon/k;-><init>(Lcom/tencent/liteav/sdkcommon/g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/k;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/sdkcommon/g;->a(Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
