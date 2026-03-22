.class public Lcom/changdu/mobovideo/plugins/PushPlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/plugins/PushPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 52\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u00015B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u000bJ\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0006J\u0017\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0006J\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001b\u0010#\u001a\u0004\u0018\u00010\"2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010\'\u001a\u00020&2\u0008\u0010!\u001a\u0004\u0018\u00010%H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008)\u0010\u0006J\u0017\u0010*\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010,\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008,\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103\u00a8\u00066"
    }
    d2 = {
        "Lcom/changdu/mobovideo/plugins/PushPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;",
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
        "p0",
        "onAttachedToActivity",
        "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V",
        "onDetachedFromActivityForConfigChanges",
        "onReattachedToActivityForConfigChanges",
        "onDetachedFromActivity",
        "Landroid/content/Intent;",
        "newIntent",
        "",
        "onNewIntent",
        "(Landroid/content/Intent;)Z",
        "",
        "value",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/Number;)I",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lio/flutter/plugin/common/MethodChannel;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lio/flutter/plugin/common/MethodChannel;",
        "channel",
        "Landroid/app/Activity;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/app/Activity;",
        "mActivity",
        "Companion",
        "app_outsideRelease"
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
        "SMAP\nPushPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushPlugin.kt\ncom/changdu/mobovideo/plugins/PushPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,376:1\n1#2:377\n1563#3:378\n1634#3,3:379\n1869#3,2:382\n1869#3,2:384\n*S KotlinDebug\n*F\n+ 1 PushPlugin.kt\ncom/changdu/mobovideo/plugins/PushPlugin\n*L\n150#1:378\n150#1:379,3\n266#1:382,2\n291#1:384,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/changdu/mobovideo/plugins/PushPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwwww:Z


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/plugins/PushPlugin$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/mobovideo/plugins/PushPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/mobovideo/plugins/PushPlugin;->Companion:Lcom/changdu/mobovideo/plugins/PushPlugin$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/PushPlugin;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string v0, "immediatelyMessage"

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/PushPlugin;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/PushPlugin;Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lcom/changdu/mobovideo/utils/CoroutineUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/CoroutineUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/mobovideo/utils/CoroutineUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v4, Lcom/changdu/mobovideo/plugins/PushPlugin$tryRegisterToken$1;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {v4, v0}, Lcom/changdu/mobovideo/plugins/PushPlugin$tryRegisterToken$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    instance-of v1, p1, Ljava/util/List;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    .line 14
    .line 15
    check-cast p1, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    return-object p1

    .line 25
    :catchall_0
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Number;)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushTime;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushTime;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    new-instance v2, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    const-string v0, ""

    .line 79
    .line 80
    :cond_2
    invoke-interface {p1, v0, v1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    .line 86
    .line 87
    :catch_1
    :goto_3
    return-void
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "mobo_video_push"

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    sput-boolean p1, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 42
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    :try_start_0
    sget-boolean v3, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    const-string v1, "\u8bf7\u5148\u521d\u59cb\u5316"

    .line 13
    .line 14
    invoke-interface {v2, v1, v4, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v3, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v3, :cond_d

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const-wide/16 v6, 0x0

    .line 27
    .line 28
    sparse-switch v5, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :sswitch_0
    const-string v1, "getInitialMessage"

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0, v2}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    .line 48
    return-void

    .line 49
    :sswitch_1
    const-string v5, "updateLastLoginAt"

    .line 50
    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_2
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 60
    .line 61
    instance-of v3, v1, Ljava/lang/Number;

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    check-cast v1, Ljava/lang/Number;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move-object v1, v4

    .line 69
    :goto_0
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move-wide v8, v6

    .line 77
    :goto_1
    cmp-long v1, v8, v6

    .line 78
    .line 79
    if-lez v1, :cond_5

    .line 80
    .line 81
    iget-object v1, v0, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    sget-object v3, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 92
    .line 93
    invoke-virtual {v3, v1, v8, v9}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwww(Landroid/content/Context;J)V

    .line 94
    .line 95
    .line 96
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 97
    .line 98
    :cond_5
    invoke-interface {v2, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    .line 103
    return-void

    .line 104
    :sswitch_2
    const-string v1, "setPushCallBack"

    .line 105
    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_6

    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_6
    invoke-virtual {v0, v2}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 115
    .line 116
    .line 117
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    .line 119
    return-void

    .line 120
    :sswitch_3
    const-string v2, "notifyLocalActivityPush"

    .line 121
    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_7

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    sget-object v2, Lcom/changdu/mobovideo/utils/NotificationUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/NotificationUtil;

    .line 130
    .line 131
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 132
    .line 133
    instance-of v3, v1, Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v3, :cond_8

    .line 136
    .line 137
    move-object v4, v1

    .line 138
    check-cast v4, Ljava/lang/String;

    .line 139
    .line 140
    :cond_8
    if-nez v4, :cond_9

    .line 141
    .line 142
    const-string v4, ""

    .line 143
    .line 144
    :cond_9
    invoke-virtual {v2, v4}, Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 148
    .line 149
    return-void

    .line 150
    :sswitch_4
    const-string v1, "tryRegisterToken"

    .line 151
    .line 152
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_a

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_a
    invoke-virtual {v0}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 160
    .line 161
    .line 162
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 163
    .line 164
    return-void

    .line 165
    :sswitch_5
    const-string v1, "getRecentPromotionSeriesIds"

    .line 166
    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_b

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_b
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 175
    .line 176
    const/4 v3, 0x1

    .line 177
    invoke-static {v1, v6, v7, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushStateStore;JILjava/lang/Object;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Ljava/lang/Iterable;

    .line 182
    .line 183
    new-instance v3, Ljava/util/ArrayList;

    .line 184
    .line 185
    const/16 v4, 0xa

    .line 186
    .line 187
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-eqz v4, :cond_c

    .line 203
    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    check-cast v4, Ljava/lang/Number;

    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 211
    .line 212
    .line 213
    move-result-wide v4

    .line 214
    long-to-int v4, v4

    .line 215
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_c
    invoke-interface {v2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_d
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 227
    .line 228
    return-void

    .line 229
    :sswitch_6
    const-string v5, "updateLocalPushConfig"

    .line 230
    .line 231
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_e

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_e
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 239
    .line 240
    instance-of v3, v1, Ljava/util/Map;

    .line 241
    .line 242
    if-eqz v3, :cond_f

    .line 243
    .line 244
    check-cast v1, Ljava/util/Map;

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_f
    move-object v1, v4

    .line 248
    :goto_4
    if-eqz v1, :cond_10

    .line 249
    .line 250
    const-string v3, "config"

    .line 251
    .line 252
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    goto :goto_5

    .line 257
    :cond_10
    move-object v1, v4

    .line 258
    :goto_5
    instance-of v3, v1, Ljava/util/Map;

    .line 259
    .line 260
    if-eqz v3, :cond_11

    .line 261
    .line 262
    check-cast v1, Ljava/util/Map;

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_11
    move-object v1, v4

    .line 266
    :goto_6
    if-nez v1, :cond_12

    .line 267
    .line 268
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    :cond_12
    const-string v3, "userZoneId"

    .line 273
    .line 274
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    instance-of v5, v3, Ljava/lang/String;

    .line 279
    .line 280
    if-eqz v5, :cond_13

    .line 281
    .line 282
    check-cast v3, Ljava/lang/String;

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_13
    move-object v3, v4

    .line 286
    :goto_7
    if-eqz v3, :cond_15

    .line 287
    .line 288
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_14

    .line 293
    .line 294
    move-object v3, v4

    .line 295
    :cond_14
    move-object v9, v3

    .line 296
    goto :goto_8

    .line 297
    :cond_15
    move-object v9, v4

    .line 298
    :goto_8
    const-string v3, "frequencyGapSeconds"

    .line 299
    .line 300
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    instance-of v5, v3, Ljava/lang/Number;

    .line 305
    .line 306
    if-eqz v5, :cond_16

    .line 307
    .line 308
    check-cast v3, Ljava/lang/Number;

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_16
    move-object v3, v4

    .line 312
    :goto_9
    if-eqz v3, :cond_17

    .line 313
    .line 314
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 315
    .line 316
    .line 317
    move-result-wide v10

    .line 318
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 319
    .line 320
    .line 321
    move-result-wide v10

    .line 322
    goto :goto_a

    .line 323
    :cond_17
    const-wide/16 v10, 0x708

    .line 324
    .line 325
    :goto_a
    const-string v3, "signInCountDownSeconds"

    .line 326
    .line 327
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    instance-of v5, v3, Ljava/lang/Number;

    .line 332
    .line 333
    if-eqz v5, :cond_18

    .line 334
    .line 335
    check-cast v3, Ljava/lang/Number;

    .line 336
    .line 337
    goto :goto_b

    .line 338
    :cond_18
    move-object v3, v4

    .line 339
    :goto_b
    if-eqz v3, :cond_19

    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 342
    .line 343
    .line 344
    move-result-wide v12

    .line 345
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 346
    .line 347
    .line 348
    move-result-wide v12

    .line 349
    goto :goto_c

    .line 350
    :cond_19
    const-wide/16 v12, 0x3840

    .line 351
    .line 352
    :goto_c
    const-string v3, "signInTriggerSecondOfDay"

    .line 353
    .line 354
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    instance-of v5, v3, Ljava/lang/Number;

    .line 359
    .line 360
    if-eqz v5, :cond_1a

    .line 361
    .line 362
    check-cast v3, Ljava/lang/Number;

    .line 363
    .line 364
    goto :goto_d

    .line 365
    :cond_1a
    move-object v3, v4

    .line 366
    :goto_d
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Number;)I

    .line 367
    .line 368
    .line 369
    move-result v14

    .line 370
    const-string v3, "signInIntervalSeconds"

    .line 371
    .line 372
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    instance-of v5, v3, Ljava/lang/Number;

    .line 377
    .line 378
    if-eqz v5, :cond_1b

    .line 379
    .line 380
    check-cast v3, Ljava/lang/Number;

    .line 381
    .line 382
    goto :goto_e

    .line 383
    :cond_1b
    move-object v3, v4

    .line 384
    :goto_e
    if-eqz v3, :cond_1c

    .line 385
    .line 386
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 387
    .line 388
    .line 389
    move-result-wide v4

    .line 390
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 391
    .line 392
    .line 393
    move-result-wide v3

    .line 394
    move-wide v15, v3

    .line 395
    goto :goto_f

    .line 396
    :cond_1c
    move-wide v15, v6

    .line 397
    :goto_f
    const-string v3, "recallTriggerAtMs"

    .line 398
    .line 399
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    instance-of v4, v3, Ljava/lang/Number;

    .line 404
    .line 405
    if-eqz v4, :cond_1d

    .line 406
    .line 407
    check-cast v3, Ljava/lang/Number;

    .line 408
    .line 409
    goto :goto_10

    .line 410
    :cond_1d
    const/4 v3, 0x0

    .line 411
    :goto_10
    if-eqz v3, :cond_1e

    .line 412
    .line 413
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 414
    .line 415
    .line 416
    move-result-wide v3

    .line 417
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 418
    .line 419
    .line 420
    move-result-wide v3

    .line 421
    move-wide/from16 v17, v3

    .line 422
    .line 423
    goto :goto_11

    .line 424
    :cond_1e
    move-wide/from16 v17, v6

    .line 425
    .line 426
    :goto_11
    const-string v3, "recallIntervalSeconds"

    .line 427
    .line 428
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    instance-of v4, v3, Ljava/lang/Number;

    .line 433
    .line 434
    if-eqz v4, :cond_1f

    .line 435
    .line 436
    check-cast v3, Ljava/lang/Number;

    .line 437
    .line 438
    goto :goto_12

    .line 439
    :cond_1f
    const/4 v3, 0x0

    .line 440
    :goto_12
    if-eqz v3, :cond_20

    .line 441
    .line 442
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 443
    .line 444
    .line 445
    move-result-wide v3

    .line 446
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 447
    .line 448
    .line 449
    move-result-wide v3

    .line 450
    move-wide/from16 v19, v3

    .line 451
    .line 452
    goto :goto_13

    .line 453
    :cond_20
    move-wide/from16 v19, v6

    .line 454
    .line 455
    :goto_13
    const-string v3, "promotionDelaySeconds"

    .line 456
    .line 457
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    instance-of v4, v3, Ljava/lang/Number;

    .line 462
    .line 463
    if-eqz v4, :cond_21

    .line 464
    .line 465
    check-cast v3, Ljava/lang/Number;

    .line 466
    .line 467
    goto :goto_14

    .line 468
    :cond_21
    const/4 v3, 0x0

    .line 469
    :goto_14
    if-eqz v3, :cond_22

    .line 470
    .line 471
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 472
    .line 473
    .line 474
    move-result-wide v3

    .line 475
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 476
    .line 477
    .line 478
    move-result-wide v3

    .line 479
    :goto_15
    move-wide/from16 v21, v3

    .line 480
    .line 481
    goto :goto_16

    .line 482
    :cond_22
    const-wide/16 v3, 0x1e

    .line 483
    .line 484
    goto :goto_15

    .line 485
    :goto_16
    const-string v3, "promotionIntervalSeconds"

    .line 486
    .line 487
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    instance-of v4, v3, Ljava/lang/Number;

    .line 492
    .line 493
    if-eqz v4, :cond_23

    .line 494
    .line 495
    check-cast v3, Ljava/lang/Number;

    .line 496
    .line 497
    goto :goto_17

    .line 498
    :cond_23
    const/4 v3, 0x0

    .line 499
    :goto_17
    if-eqz v3, :cond_24

    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 502
    .line 503
    .line 504
    move-result-wide v3

    .line 505
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 506
    .line 507
    .line 508
    move-result-wide v6

    .line 509
    :cond_24
    move-wide/from16 v23, v6

    .line 510
    .line 511
    const-string v3, "dndStartSecondOfDay"

    .line 512
    .line 513
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    instance-of v4, v3, Ljava/lang/Number;

    .line 518
    .line 519
    if-eqz v4, :cond_25

    .line 520
    .line 521
    check-cast v3, Ljava/lang/Number;

    .line 522
    .line 523
    goto :goto_18

    .line 524
    :cond_25
    const/4 v3, 0x0

    .line 525
    :goto_18
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Number;)I

    .line 526
    .line 527
    .line 528
    move-result v25

    .line 529
    const-string v3, "dndEndSecondOfDay"

    .line 530
    .line 531
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    instance-of v4, v3, Ljava/lang/Number;

    .line 536
    .line 537
    if-eqz v4, :cond_26

    .line 538
    .line 539
    check-cast v3, Ljava/lang/Number;

    .line 540
    .line 541
    goto :goto_19

    .line 542
    :cond_26
    const/4 v3, 0x0

    .line 543
    :goto_19
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Number;)I

    .line 544
    .line 545
    .line 546
    move-result v26

    .line 547
    const-string v3, "dndSignInStartSecondOfDay"

    .line 548
    .line 549
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    instance-of v4, v3, Ljava/lang/Number;

    .line 554
    .line 555
    if-eqz v4, :cond_27

    .line 556
    .line 557
    check-cast v3, Ljava/lang/Number;

    .line 558
    .line 559
    goto :goto_1a

    .line 560
    :cond_27
    const/4 v3, 0x0

    .line 561
    :goto_1a
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Number;)I

    .line 562
    .line 563
    .line 564
    move-result v27

    .line 565
    const-string v3, "dndSignInEndSecondOfDay"

    .line 566
    .line 567
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    instance-of v4, v3, Ljava/lang/Number;

    .line 572
    .line 573
    if-eqz v4, :cond_28

    .line 574
    .line 575
    check-cast v3, Ljava/lang/Number;

    .line 576
    .line 577
    goto :goto_1b

    .line 578
    :cond_28
    const/4 v3, 0x0

    .line 579
    :goto_1b
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Number;)I

    .line 580
    .line 581
    .line 582
    move-result v28

    .line 583
    const-string v3, "dndRecallStartSecondOfDay"

    .line 584
    .line 585
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    instance-of v4, v3, Ljava/lang/Number;

    .line 590
    .line 591
    if-eqz v4, :cond_29

    .line 592
    .line 593
    check-cast v3, Ljava/lang/Number;

    .line 594
    .line 595
    goto :goto_1c

    .line 596
    :cond_29
    const/4 v3, 0x0

    .line 597
    :goto_1c
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Number;)I

    .line 598
    .line 599
    .line 600
    move-result v29

    .line 601
    const-string v3, "dndRecallEndSecondOfDay"

    .line 602
    .line 603
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    instance-of v4, v3, Ljava/lang/Number;

    .line 608
    .line 609
    if-eqz v4, :cond_2a

    .line 610
    .line 611
    check-cast v3, Ljava/lang/Number;

    .line 612
    .line 613
    goto :goto_1d

    .line 614
    :cond_2a
    const/4 v3, 0x0

    .line 615
    :goto_1d
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Number;)I

    .line 616
    .line 617
    .line 618
    move-result v30

    .line 619
    const-string v3, "dndPromotionStartSecondOfDay"

    .line 620
    .line 621
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    instance-of v4, v3, Ljava/lang/Number;

    .line 626
    .line 627
    if-eqz v4, :cond_2b

    .line 628
    .line 629
    check-cast v3, Ljava/lang/Number;

    .line 630
    .line 631
    goto :goto_1e

    .line 632
    :cond_2b
    const/4 v3, 0x0

    .line 633
    :goto_1e
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Number;)I

    .line 634
    .line 635
    .line 636
    move-result v31

    .line 637
    const-string v3, "dndPromotionEndSecondOfDay"

    .line 638
    .line 639
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    instance-of v4, v3, Ljava/lang/Number;

    .line 644
    .line 645
    if-eqz v4, :cond_2c

    .line 646
    .line 647
    check-cast v3, Ljava/lang/Number;

    .line 648
    .line 649
    goto :goto_1f

    .line 650
    :cond_2c
    const/4 v3, 0x0

    .line 651
    :goto_1f
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Number;)I

    .line 652
    .line 653
    .line 654
    move-result v32

    .line 655
    const-string v3, "signInCollapsedRightImageUrl"

    .line 656
    .line 657
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v3

    .line 661
    instance-of v4, v3, Ljava/lang/String;

    .line 662
    .line 663
    if-eqz v4, :cond_2d

    .line 664
    .line 665
    check-cast v3, Ljava/lang/String;

    .line 666
    .line 667
    goto :goto_20

    .line 668
    :cond_2d
    const/4 v3, 0x0

    .line 669
    :goto_20
    if-eqz v3, :cond_2f

    .line 670
    .line 671
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 672
    .line 673
    .line 674
    move-result v4

    .line 675
    if-eqz v4, :cond_2e

    .line 676
    .line 677
    const/4 v3, 0x0

    .line 678
    :cond_2e
    move-object/from16 v33, v3

    .line 679
    .line 680
    goto :goto_21

    .line 681
    :cond_2f
    const/16 v33, 0x0

    .line 682
    .line 683
    :goto_21
    const-string v3, "recallCollapsedRightImageUrl"

    .line 684
    .line 685
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    instance-of v4, v3, Ljava/lang/String;

    .line 690
    .line 691
    if-eqz v4, :cond_30

    .line 692
    .line 693
    check-cast v3, Ljava/lang/String;

    .line 694
    .line 695
    goto :goto_22

    .line 696
    :cond_30
    const/4 v3, 0x0

    .line 697
    :goto_22
    if-eqz v3, :cond_32

    .line 698
    .line 699
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 700
    .line 701
    .line 702
    move-result v4

    .line 703
    if-eqz v4, :cond_31

    .line 704
    .line 705
    const/4 v3, 0x0

    .line 706
    :cond_31
    move-object/from16 v34, v3

    .line 707
    .line 708
    goto :goto_23

    .line 709
    :cond_32
    const/16 v34, 0x0

    .line 710
    .line 711
    :goto_23
    const-string v3, "recallExpandedBgImageUrl"

    .line 712
    .line 713
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    instance-of v4, v3, Ljava/lang/String;

    .line 718
    .line 719
    if-eqz v4, :cond_33

    .line 720
    .line 721
    check-cast v3, Ljava/lang/String;

    .line 722
    .line 723
    goto :goto_24

    .line 724
    :cond_33
    const/4 v3, 0x0

    .line 725
    :goto_24
    if-eqz v3, :cond_35

    .line 726
    .line 727
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 728
    .line 729
    .line 730
    move-result v4

    .line 731
    if-eqz v4, :cond_34

    .line 732
    .line 733
    const/4 v3, 0x0

    .line 734
    :cond_34
    move-object/from16 v35, v3

    .line 735
    .line 736
    goto :goto_25

    .line 737
    :cond_35
    const/16 v35, 0x0

    .line 738
    .line 739
    :goto_25
    const-string v3, "signInContentRule"

    .line 740
    .line 741
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v3

    .line 745
    instance-of v4, v3, Ljava/lang/Number;

    .line 746
    .line 747
    if-eqz v4, :cond_36

    .line 748
    .line 749
    check-cast v3, Ljava/lang/Number;

    .line 750
    .line 751
    goto :goto_26

    .line 752
    :cond_36
    const/4 v3, 0x0

    .line 753
    :goto_26
    const/4 v4, 0x2

    .line 754
    if-eqz v3, :cond_37

    .line 755
    .line 756
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    sget-object v5, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushContentRule;

    .line 761
    .line 762
    invoke-virtual {v5, v3}, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    move/from16 v36, v3

    .line 767
    .line 768
    goto :goto_27

    .line 769
    :cond_37
    move/from16 v36, v4

    .line 770
    .line 771
    :goto_27
    const-string v3, "recallContentRule"

    .line 772
    .line 773
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    instance-of v5, v3, Ljava/lang/Number;

    .line 778
    .line 779
    if-eqz v5, :cond_38

    .line 780
    .line 781
    check-cast v3, Ljava/lang/Number;

    .line 782
    .line 783
    goto :goto_28

    .line 784
    :cond_38
    const/4 v3, 0x0

    .line 785
    :goto_28
    if-eqz v3, :cond_39

    .line 786
    .line 787
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    sget-object v5, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushContentRule;

    .line 792
    .line 793
    invoke-virtual {v5, v3}, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 794
    .line 795
    .line 796
    move-result v3

    .line 797
    move/from16 v37, v3

    .line 798
    .line 799
    goto :goto_29

    .line 800
    :cond_39
    move/from16 v37, v4

    .line 801
    .line 802
    :goto_29
    const-string v3, "promotionContentRule"

    .line 803
    .line 804
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    instance-of v5, v3, Ljava/lang/Number;

    .line 809
    .line 810
    if-eqz v5, :cond_3a

    .line 811
    .line 812
    check-cast v3, Ljava/lang/Number;

    .line 813
    .line 814
    goto :goto_2a

    .line 815
    :cond_3a
    const/4 v3, 0x0

    .line 816
    :goto_2a
    if-eqz v3, :cond_3b

    .line 817
    .line 818
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 819
    .line 820
    .line 821
    move-result v3

    .line 822
    sget-object v4, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushContentRule;

    .line 823
    .line 824
    invoke-virtual {v4, v3}, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 825
    .line 826
    .line 827
    move-result v4

    .line 828
    :cond_3b
    move/from16 v38, v4

    .line 829
    .line 830
    const-string v3, "signInContents"

    .line 831
    .line 832
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v39

    .line 840
    const-string v3, "recallContents"

    .line 841
    .line 842
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v40

    .line 850
    const-string v3, "promotionContents"

    .line 851
    .line 852
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v1

    .line 856
    invoke-virtual {v0, v1}, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v41

    .line 860
    new-instance v8, Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 861
    .line 862
    invoke-direct/range {v8 .. v41}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;-><init>(Ljava/lang/String;JJIJJJJJIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 866
    .line 867
    invoke-virtual {v1, v8}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)V

    .line 868
    .line 869
    .line 870
    iget-object v3, v0, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 871
    .line 872
    if-eqz v3, :cond_3c

    .line 873
    .line 874
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 875
    .line 876
    .line 877
    move-result-object v3

    .line 878
    if-eqz v3, :cond_3c

    .line 879
    .line 880
    invoke-virtual {v1, v3}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 881
    .line 882
    .line 883
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 884
    .line 885
    :cond_3c
    const/4 v1, 0x0

    .line 886
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 887
    .line 888
    .line 889
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .line 891
    :catch_0
    return-void

    .line 892
    nop

    .line 893
    :sswitch_data_0
    .sparse-switch
        -0x3b9db742 -> :sswitch_6
        -0x2a5e0971 -> :sswitch_5
        -0x283460e5 -> :sswitch_4
        -0x19769a75 -> :sswitch_3
        -0xc3384df -> :sswitch_2
        0x40c7197d -> :sswitch_1
        0x7d8a1919 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance v0, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/changdu/mobovideo/plugins/PushPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    new-instance v1, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwww;

    .line 51
    .line 52
    invoke-direct {v1, p0, v0}, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/changdu/mobovideo/plugins/PushPlugin;Lorg/json/JSONObject;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 59
    return p1
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/plugins/PushPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    :catch_0
    return-void
.end method
