.class Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->didExposure(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;

.field final synthetic val$exposureListener:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

.field final synthetic val$mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->val$exposureListener:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->val$mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->val$exposureListener:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->val$mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;->val$mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;->didExposure(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
