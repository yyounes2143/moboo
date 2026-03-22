.class Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;
.super Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->startMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

.field final synthetic val$executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public trackEvent(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
