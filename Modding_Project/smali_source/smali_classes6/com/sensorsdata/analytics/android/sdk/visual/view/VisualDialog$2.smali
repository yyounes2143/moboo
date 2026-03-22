.class final Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog;->showOpenHeatMapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$featureCode:Ljava/lang/String;

.field final synthetic val$postUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog$2;->val$context:Landroid/app/Activity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog$2;->val$featureCode:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog$2;->val$postUrl:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog$2;->val$context:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog$2;->val$featureCode:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog$2;->val$postUrl:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog$2;->val$context:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
