.class public final Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cd_core4/cd_webview/CdWebViewPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "id",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "result",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(ILio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(I)V",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/app/Activity;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/app/Activity;",
        "setActivity",
        "(Landroid/app/Activity;)V",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "_activityPluginBinding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "",
        "_activityListener",
        "Ljava/util/Map;",
        "cd_webview_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V
    .locals 1
    .param p2    # Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/cd_core4/cd_webview/CdWebViewPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1, p2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
