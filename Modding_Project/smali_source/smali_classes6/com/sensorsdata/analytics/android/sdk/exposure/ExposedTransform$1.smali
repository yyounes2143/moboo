.class Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;

.field final synthetic val$callBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$1;->val$callBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public viewLayoutChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;)Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/app/Activity;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$1;->val$callBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;->viewLayoutChange(Landroid/app/Activity;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
