.class public Lio/flutter/plugins/quickactions/QuickActionsPlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/quickactions/QuickActionsPlugin$AndroidSdkChecker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickActionsAndroid"


# instance fields
.field private quickActions:Lio/flutter/plugins/quickactions/QuickActions;

.field private quickActionsFlutterApi:Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsFlutterApi;

.field private final sdkChecker:Lio/flutter/plugins/quickactions/QuickActionsPlugin$AndroidSdkChecker;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/quickactions/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    invoke-direct {v0}, Lio/flutter/plugins/quickactions/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    invoke-direct {p0, v0}, Lio/flutter/plugins/quickactions/QuickActionsPlugin;-><init>(Lio/flutter/plugins/quickactions/QuickActionsPlugin$AndroidSdkChecker;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugins/quickactions/QuickActionsPlugin$AndroidSdkChecker;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/quickactions/QuickActionsPlugin$AndroidSdkChecker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->sdkChecker:Lio/flutter/plugins/quickactions/QuickActionsPlugin$AndroidSdkChecker;

    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    if-lt v0, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->quickActions:Lio/flutter/plugins/quickactions/QuickActions;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "QuickActionsAndroid"

    .line 6
    .line 7
    const-string v0, "quickActions was never set."

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->quickActions:Lio/flutter/plugins/quickactions/QuickActions;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lio/flutter/plugins/quickactions/QuickActions;->setActivity(Landroid/app/Activity;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->onNewIntent(Landroid/content/Intent;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/flutter/plugins/quickactions/QuickActions;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lio/flutter/plugins/quickactions/QuickActions;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->quickActions:Lio/flutter/plugins/quickactions/QuickActions;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->quickActions:Lio/flutter/plugins/quickactions/QuickActions;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsApi;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsFlutterApi;

    .line 22
    .line 23
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->quickActionsFlutterApi:Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsFlutterApi;

    .line 31
    .line 32
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->quickActions:Lio/flutter/plugins/quickactions/QuickActions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/flutter/plugins/quickactions/QuickActions;->setActivity(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->onDetachedFromActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsApi;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->quickActions:Lio/flutter/plugins/quickactions/QuickActions;

    .line 10
    .line 11
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->sdkChecker:Lio/flutter/plugins/quickactions/QuickActionsPlugin$AndroidSdkChecker;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lio/flutter/plugins/quickactions/QuickActionsPlugin$AndroidSdkChecker;->sdkIsAtLeast(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->quickActions:Lio/flutter/plugins/quickactions/QuickActions;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/flutter/plugins/quickactions/QuickActions;->getActivity()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "some unique action key"

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->quickActionsFlutterApi:Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsFlutterApi;

    .line 40
    .line 41
    new-instance v3, Lio/flutter/plugins/quickactions/QuickActionsPlugin$1;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lio/flutter/plugins/quickactions/QuickActionsPlugin$1;-><init>(Lio/flutter/plugins/quickactions/QuickActionsPlugin;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1, v3}, Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsFlutterApi;->launchAction(Ljava/lang/String;Lio/flutter/plugins/quickactions/Messages$VoidResult;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return v1
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lio/flutter/plugins/quickactions/QuickActionsPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
