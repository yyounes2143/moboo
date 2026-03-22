.class public final Ldev/fluttercommunity/plus/wakelock/WakelockPlusPlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements LWakelockPlusApi;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Ldev/fluttercommunity/plus/wakelock/WakelockPlusPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "LWakelockPlusApi;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "<init>",
        "()V",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "flutterPluginBinding",
        "",
        "onAttachedToEngine",
        "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V",
        "binding",
        "onDetachedFromEngine",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "onAttachedToActivity",
        "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V",
        "onDetachedFromActivity",
        "onReattachedToActivityForConfigChanges",
        "onDetachedFromActivityForConfigChanges",
        "LToggleMessage;",
        "msg",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(LToggleMessage;)V",
        "LIsEnabledMessage;",
        "isEnabled",
        "()LIsEnabledMessage;",
        "Ldev/fluttercommunity/plus/wakelock/Wakelock;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Ldev/fluttercommunity/plus/wakelock/Wakelock;",
        "wakelock",
        "wakelock_plus_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/wakelock/Wakelock;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LToggleMessage;)V
    .locals 1
    .param p1    # LToggleMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ldev/fluttercommunity/plus/wakelock/WakelockPlusPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/wakelock/Wakelock;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldev/fluttercommunity/plus/wakelock/Wakelock;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LToggleMessage;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isEnabled()LIsEnabledMessage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ldev/fluttercommunity/plus/wakelock/WakelockPlusPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/wakelock/Wakelock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldev/fluttercommunity/plus/wakelock/Wakelock;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()LIsEnabledMessage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ldev/fluttercommunity/plus/wakelock/WakelockPlusPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/wakelock/Wakelock;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ldev/fluttercommunity/plus/wakelock/Wakelock;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, LWakelockPlusApi;->Companion:LWakelockPlusApi$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1, p0}, LWakelockPlusApi$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;LWakelockPlusApi;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ldev/fluttercommunity/plus/wakelock/Wakelock;

    .line 11
    .line 12
    invoke-direct {p1}, Ldev/fluttercommunity/plus/wakelock/Wakelock;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Ldev/fluttercommunity/plus/wakelock/WakelockPlusPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/wakelock/Wakelock;

    .line 16
    .line 17
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/fluttercommunity/plus/wakelock/WakelockPlusPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/wakelock/Wakelock;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ldev/fluttercommunity/plus/wakelock/Wakelock;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldev/fluttercommunity/plus/wakelock/WakelockPlusPlugin;->onDetachedFromActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, LWakelockPlusApi;->Companion:LWakelockPlusApi$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, LWakelockPlusApi$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;LWakelockPlusApi;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Ldev/fluttercommunity/plus/wakelock/WakelockPlusPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/wakelock/Wakelock;

    .line 12
    .line 13
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Ldev/fluttercommunity/plus/wakelock/WakelockPlusPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
