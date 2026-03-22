.class public final Lcom/spencerccf/app_settings/AppSettingsPlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\nJ\u0017\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J\u0017\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0005J\u001f\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0010J\u001f\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0010J!\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ!\u0010 \u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008 \u0010\u001eJ!\u0010!\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008!\u0010\u001eJ\u001f\u0010\"\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\"\u0010\u001eJ\u001f\u0010#\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008#\u0010\u001eJ)\u0010&\u001a\u00020\u00082\u0006\u0010%\u001a\u00020$2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008&\u0010\'J)\u0010*\u001a\u00020\u00082\u0006\u0010)\u001a\u00020(2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010,\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008,\u0010\u001eR\u0018\u0010/\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010.R\u0016\u00102\u001a\u0002008\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u00101\u00a8\u00063"
    }
    d2 = {
        "Lcom/spencerccf/app_settings/AppSettingsPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "<init>",
        "()V",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "flutterPluginBinding",
        "",
        "onAttachedToEngine",
        "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V",
        "Lio/flutter/plugin/common/MethodCall;",
        "call",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "result",
        "onMethodCall",
        "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "binding",
        "onDetachedFromEngine",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "onAttachedToActivity",
        "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V",
        "onDetachedFromActivityForConfigChanges",
        "onReattachedToActivityForConfigChanges",
        "onDetachedFromActivity",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "",
        "asAnotherTask",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lio/flutter/plugin/common/MethodChannel$Result;Z)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "",
        "url",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V",
        "Landroid/content/Intent;",
        "intent",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Intent;Lio/flutter/plugin/common/MethodChannel$Result;Z)V",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/app/Activity;",
        "Landroid/app/Activity;",
        "activity",
        "Lio/flutter/plugin/common/MethodChannel;",
        "Lio/flutter/plugin/common/MethodChannel;",
        "channel",
        "app_settings_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppSettingsPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSettingsPlugin.kt\ncom/spencerccf/app_settings/AppSettingsPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,302:1\n1#2:303\n*E\n"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;
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
.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "android.settings.VPN_SETTINGS"

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1, p2}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "android.net.vpn.SETTINGS"

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1, p2}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Intent;Lio/flutter/plugin/common/MethodChannel$Result;Z)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const/high16 v0, 0x10000000

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    invoke-virtual {p0, p2, p3}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const/high16 p1, 0x10000000

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    invoke-virtual {p0, p2, p3}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "android.provider.extra.APP_PACKAGE"

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    const/high16 p2, 0x10000000

    .line 31
    .line 32
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 p2, 0x0

    .line 39
    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.android.settings"

    .line 7
    .line 8
    const-string v2, "com.android.settings.TetherSettings"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0, p1, p2}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Intent;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V
    .locals 1

    .line 1
    const-string v0, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/high16 p2, 0x10000000

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p2, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const-string v2, "package"

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v1, "android.settings.APP_LOCALE_SETTINGS"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    const/high16 p2, 0x10000000

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p2, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    const-string v1, "package"

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v1, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v2, "package"

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v2, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    .line 33
    .line 34
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, p1, p2}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Intent;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 13
    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    const-string v1, "type"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p1, :cond_5

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sparse-switch v1, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :sswitch_0
    const-string v1, "internetConnectivity"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 44
    .line 45
    const-string v1, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    .line 46
    .line 47
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :sswitch_1
    const-string v1, "wifi"

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 67
    .line 68
    const-string v1, "android.settings.panel.action.WIFI"

    .line 69
    .line 70
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :sswitch_2
    const-string v1, "nfc"

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 90
    .line 91
    const-string v1, "android.settings.panel.action.NFC"

    .line 92
    .line 93
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :sswitch_3
    const-string v1, "volume"

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    new-instance p1, Landroid/content/Intent;

    .line 113
    .line 114
    const-string v1, "android.settings.panel.action.VOLUME"

    .line 115
    .line 116
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_5
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_6
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    nop

    .line 135
    :sswitch_data_0
    .sparse-switch
        -0x305518e6 -> :sswitch_3
        0x1a9ab -> :sswitch_2
        0x37af15 -> :sswitch_1
        0x140ab98 -> :sswitch_0
    .end sparse-switch
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const-string v0, "asAnotherTask"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    const-string v1, "type"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz p1, :cond_19

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sparse-switch v1, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :sswitch_0
    const-string v1, "bluetooth"

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_1
    const-string p1, "android.settings.BLUETOOTH_SETTINGS"

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :sswitch_1
    const-string v1, "location"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_2
    const-string p1, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 63
    .line 64
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :sswitch_2
    const-string v1, "display"

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_3
    const-string p1, "android.settings.DISPLAY_SETTINGS"

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :sswitch_3
    const-string v1, "settings"

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_4

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :sswitch_4
    const-string v1, "appLocale"

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_5

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_5
    invoke-virtual {p0, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :sswitch_5
    const-string v1, "lockAndPassword"

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_6

    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :cond_6
    const-string p1, "android.app.action.SET_NEW_PASSWORD"

    .line 123
    .line 124
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :sswitch_6
    const-string v1, "hotspot"

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_7

    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_7
    invoke-virtual {p0, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :sswitch_7
    const-string v1, "internalStorage"

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_8

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_8
    const-string p1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    .line 153
    .line 154
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :sswitch_8
    const-string v1, "security"

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_9

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :cond_9
    const-string p1, "android.settings.SECURITY_SETTINGS"

    .line 169
    .line 170
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :sswitch_9
    const-string v1, "notification"

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_a

    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :cond_a
    invoke-virtual {p0, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :sswitch_a
    const-string v1, "sound"

    .line 189
    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-nez p1, :cond_b

    .line 195
    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :cond_b
    const-string p1, "android.settings.SOUND_SETTINGS"

    .line 199
    .line 200
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :sswitch_b
    const-string v1, "alarm"

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_c

    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :cond_c
    invoke-virtual {p0, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :sswitch_c
    const-string v1, "wifi"

    .line 219
    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-nez p1, :cond_d

    .line 225
    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :cond_d
    const-string p1, "android.settings.WIFI_SETTINGS"

    .line 229
    .line 230
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :sswitch_d
    const-string v1, "date"

    .line 235
    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-nez p1, :cond_e

    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :cond_e
    const-string p1, "android.settings.DATE_SETTINGS"

    .line 245
    .line 246
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :sswitch_e
    const-string v1, "vpn"

    .line 251
    .line 252
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-nez p1, :cond_f

    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :cond_f
    invoke-virtual {p0, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :sswitch_f
    const-string v1, "nfc"

    .line 265
    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_10

    .line 271
    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :cond_10
    const-string p1, "android.settings.NFC_SETTINGS"

    .line 275
    .line 276
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :sswitch_10
    const-string v1, "apn"

    .line 281
    .line 282
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-nez p1, :cond_11

    .line 287
    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :cond_11
    const-string p1, "android.settings.APN_SETTINGS"

    .line 291
    .line 292
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :sswitch_11
    const-string v1, "developer"

    .line 297
    .line 298
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-nez p1, :cond_12

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_12
    const-string p1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    .line 306
    .line 307
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :sswitch_12
    const-string v1, "dataRoaming"

    .line 312
    .line 313
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-nez p1, :cond_13

    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_13
    const-string p1, "android.settings.DATA_ROAMING_SETTINGS"

    .line 321
    .line 322
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :sswitch_13
    const-string v1, "accessibility"

    .line 327
    .line 328
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-nez p1, :cond_14

    .line 333
    .line 334
    goto :goto_1

    .line 335
    :cond_14
    const-string p1, "android.settings.ACCESSIBILITY_SETTINGS"

    .line 336
    .line 337
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :sswitch_14
    const-string v1, "wireless"

    .line 342
    .line 343
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-nez p1, :cond_15

    .line 348
    .line 349
    goto :goto_1

    .line 350
    :cond_15
    const-string p1, "android.settings.WIRELESS_SETTINGS"

    .line 351
    .line 352
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :sswitch_15
    const-string v1, "device"

    .line 357
    .line 358
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    if-nez p1, :cond_16

    .line 363
    .line 364
    goto :goto_1

    .line 365
    :cond_16
    const-string p1, "android.settings.DEVICE_INFO_SETTINGS"

    .line 366
    .line 367
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 368
    .line 369
    .line 370
    return-void

    .line 371
    :sswitch_16
    const-string v1, "generalSettings"

    .line 372
    .line 373
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-nez p1, :cond_17

    .line 378
    .line 379
    goto :goto_1

    .line 380
    :cond_17
    const-string p1, "android.settings.SETTINGS"

    .line 381
    .line 382
    invoke-virtual {p0, p1, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :sswitch_17
    const-string v1, "batteryOptimization"

    .line 387
    .line 388
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-nez p1, :cond_18

    .line 393
    .line 394
    goto :goto_1

    .line 395
    :cond_18
    invoke-virtual {p0, p2, v0}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Z)V

    .line 396
    .line 397
    .line 398
    return-void

    .line 399
    :cond_19
    :goto_1
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :sswitch_data_0
    .sparse-switch
        -0x79e817e6 -> :sswitch_17
        -0x72ed3ed5 -> :sswitch_16
        -0x4f94e1aa -> :sswitch_15
        -0x3b9b7862 -> :sswitch_14
        -0xcb43eb2 -> :sswitch_13
        -0x6cf0ef1 -> :sswitch_12
        -0x4cf1836 -> :sswitch_11
        0x17a1f -> :sswitch_10
        0x1a9ab -> :sswitch_f
        0x1c8f4 -> :sswitch_e
        0x2eefae -> :sswitch_d
        0x37af15 -> :sswitch_c
        0x5897a51 -> :sswitch_b
        0x688c90f -> :sswitch_a
        0x237a88eb -> :sswitch_9
        0x38927740 -> :sswitch_8
        0x3dfc74fe -> :sswitch_7
        0x418a9ecf -> :sswitch_6
        0x48665b67 -> :sswitch_5
        0x4d2697db -> :sswitch_4
        0x5582bc23 -> :sswitch_3
        0x63a518c2 -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x755ac2ae -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 6
    .line 7
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "com.spencerccf.app_settings/methods"

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "openSettings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string v1, "openSettingsPanel"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/spencerccf/app_settings/AppSettingsPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 6
    .line 7
    return-void
.end method
