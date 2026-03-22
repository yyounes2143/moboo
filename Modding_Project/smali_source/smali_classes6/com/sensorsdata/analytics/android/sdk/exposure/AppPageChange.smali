.class public Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.AppPageChange"


# instance fields
.field private final mLayoutCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;->mLayoutCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "SA.AppPageChange"

    .line 2
    .line 3
    const-string p2, "onGlobalFocusChanged"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;->mLayoutCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;->viewLayoutChange()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 1
    const-string v0, "SA.AppPageChange"

    .line 2
    .line 3
    const-string v1, "onGlobalLayout"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;->mLayoutCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;->viewLayoutChange()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onScrollChanged()V
    .locals 2

    .line 1
    const-string v0, "SA.AppPageChange"

    .line 2
    .line 3
    const-string v1, "onScrollChanged"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;->mLayoutCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;->viewLayoutChange()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    const-string p1, "SA.AppPageChange"

    .line 2
    .line 3
    const-string v0, "onWindowFocusChanged"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;->mLayoutCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;->viewLayoutChange()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
