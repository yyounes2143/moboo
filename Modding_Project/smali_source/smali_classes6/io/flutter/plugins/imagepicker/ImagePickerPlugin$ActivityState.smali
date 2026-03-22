.class Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/ImagePickerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityState"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private application:Landroid/app/Application;

.field private delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field private messenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

.field final synthetic this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin;Landroid/app/Application;Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/imagepicker/Messages$ImagePickerApi;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->application:Landroid/app/Application;

    .line 3
    iput-object p3, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activity:Landroid/app/Activity;

    .line 4
    iput-object p6, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 5
    iput-object p4, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 6
    invoke-virtual {p1, p3}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->constructDelegate(Landroid/app/Activity;)Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    move-result-object p2

    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    .line 7
    invoke-static {p4, p5}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/imagepicker/Messages$ImagePickerApi;)V

    .line 8
    new-instance p2, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    invoke-direct {p2, p1, p3}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin;Landroid/app/Activity;)V

    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    .line 9
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    invoke-interface {p6, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 10
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    invoke-interface {p6, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 11
    invoke-static {p6}, Lio/flutter/embedding/engine/plugins/lifecycle/FlutterLifecycleAdapter;->getActivityLifecycle(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 12
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin;Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Landroid/app/Activity;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p3, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activity:Landroid/app/Activity;

    .line 15
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDelegate()Lio/flutter/plugins/imagepicker/ImagePickerDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    .line 7
    .line 8
    invoke-interface {v0, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 12
    .line 13
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    .line 14
    .line 15
    invoke-interface {v0, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/imagepicker/Messages$ImagePickerApi;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->application:Landroid/app/Application;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->application:Landroid/app/Application;

    .line 46
    .line 47
    :cond_2
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->activity:Landroid/app/Activity;

    .line 48
    .line 49
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->observer:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;

    .line 50
    .line 51
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->delegate:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    .line 52
    .line 53
    return-void
.end method
