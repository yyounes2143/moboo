.class public Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;
    }
.end annotation


# instance fields
.field private activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private delegate:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

.field private messenger:Lio/flutter/plugin/common/BinaryMessenger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private attachToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->delegate:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->delegate:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    .line 9
    .line 10
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->setActivity(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private dispose()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->delegate:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    .line 3
    .line 4
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {v1, v0}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private disposeActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->delegate:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->delegate:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->setActivity(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public initInstance(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;)V
    .locals 1
    .param p1    # Lio/flutter/plugin/common/BinaryMessenger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 2
    .line 3
    new-instance v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    .line 4
    .line 5
    invoke-direct {v0, p2, p3}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;-><init>(Landroid/content/Context;Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->delegate:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->attachToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;

    .line 10
    .line 11
    invoke-direct {v1}, Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->initInstance(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->disposeActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->disposeActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->dispose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;->attachToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
