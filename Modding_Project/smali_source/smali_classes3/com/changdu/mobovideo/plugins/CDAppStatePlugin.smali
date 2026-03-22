.class public final Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u0017\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0005J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0005J/\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020 0\u001d2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010#\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008#\u0010\u0011R\u0018\u0010&\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010%R\u0016\u0010)\u001a\u00020\'8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0018\u00104\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u00103R\u0014\u00107\u001a\u00020\u00188\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u0010:\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010<\u00a8\u0006>"
    }
    d2 = {
        "Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "<init>",
        "()V",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "binding",
        "",
        "onAttachedToEngine",
        "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V",
        "onDetachedFromEngine",
        "Lio/flutter/plugin/common/MethodCall;",
        "call",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "result",
        "onMethodCall",
        "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "onAttachedToActivity",
        "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V",
        "onDetachedFromActivityForConfigChanges",
        "onReattachedToActivityForConfigChanges",
        "onDetachedFromActivity",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "()Ljava/lang/String;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwww",
        "",
        "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;",
        "parameters",
        "",
        "Wwwwwwwwwwwwwwwwwww",
        "(Ljava/util/Map;)Ljava/util/Map;",
        "Wwwwwwwwwwwwwwwwww",
        "Lio/flutter/plugin/common/MethodChannel;",
        "Lio/flutter/plugin/common/MethodChannel;",
        "channel",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "applicationContext",
        "Landroid/content/ContentResolver;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/ContentResolver;",
        "mContentResolver",
        "",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "cdMemsInited",
        "Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;",
        "Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;",
        "mConfigUpdateListenerRegistration",
        "Wwwwwwwwwwwwwwwwwwww",
        "Ljava/lang/String;",
        "APP_PROTECT",
        "Landroid/app/Activity;",
        "Landroid/app/Activity;",
        "mActivity",
        "Lcom/changdu/mobovideo/media/MediaNotificationManager;",
        "Lcom/changdu/mobovideo/media/MediaNotificationManager;",
        "mediaNotificationManager",
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


# instance fields
.field public Wwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwww:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/ContentResolver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "appProtect"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwww()V

    .line 8
    .line 9
    .line 10
    sget-object p2, Lcom/changdu/mobovideo/utils/CoroutineUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/CoroutineUtil;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/changdu/mobovideo/utils/CoroutineUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v3, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$getFirebaseRemoteConfig$1$1;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-direct {v3, p1, p0, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$getFirebaseRemoteConfig$1$1;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwww(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-wide/16 v0, 0xe10

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x3c

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setFetchTimeoutInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)Lcom/changdu/mobovideo/media/MediaNotificationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/android/gms/tasks/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 11

    .line 1
    const-string v0, "currency"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/google/firebase/analytics/AnalyticsKt;->getAnalytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v4, "adPlatform"

    .line 16
    .line 17
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    const-string v5, ""

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    :cond_0
    :try_start_1
    const-string v6, "adUnitId"

    .line 29
    .line 30
    invoke-virtual {p1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Ljava/lang/String;

    .line 35
    .line 36
    if-nez v6, :cond_1

    .line 37
    .line 38
    move-object v6, v5

    .line 39
    :cond_1
    const-string v7, "formatLabel"

    .line 40
    .line 41
    invoke-virtual {p1, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Ljava/lang/String;

    .line 46
    .line 47
    if-nez v7, :cond_2

    .line 48
    .line 49
    move-object v7, v5

    .line 50
    :cond_2
    const-string v8, "adSource"

    .line 51
    .line 52
    invoke-virtual {p1, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Ljava/lang/String;

    .line 57
    .line 58
    if-nez v8, :cond_3

    .line 59
    .line 60
    move-object v8, v5

    .line 61
    :cond_3
    const-string v9, "revenue"

    .line 62
    .line 63
    invoke-virtual {p1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    check-cast v9, Ljava/lang/Double;

    .line 68
    .line 69
    if-eqz v9, :cond_4

    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    .line 72
    .line 73
    .line 74
    move-result-wide v9

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const-wide/16 v9, 0x0

    .line 77
    .line 78
    :goto_0
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/String;

    .line 83
    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    move-object v5, p1

    .line 88
    :goto_1
    const-string p1, "ad_platform"

    .line 89
    .line 90
    invoke-virtual {v3, p1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p1, "ad_unit_name"

    .line 94
    .line 95
    invoke-virtual {v3, p1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string p1, "ad_format"

    .line 99
    .line 100
    invoke-virtual {v3, p1, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string p1, "ad_source"

    .line 104
    .line 105
    invoke-virtual {v3, p1, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string p1, "value"

    .line 109
    .line 110
    invoke-virtual {v3, p1, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string p1, "ad_impression"

    .line 117
    .line 118
    invoke-virtual {v2, p1, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-interface {v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asByteArray()[B

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/changdu/mobovideo/utils/CoroutineUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/CoroutineUtil;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/changdu/mobovideo/utils/CoroutineUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineScope;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v4, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$handleFirebaseRemoteConfigToFlutter$1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v4, p0, v0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$handleFirebaseRemoteConfigToFlutter$1;-><init>(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/RemoteConfigKt;->remoteConfigSettings(Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;->remove()V

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance v1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$getFirebaseRemoteConfig$2;

    .line 39
    .line 40
    invoke-direct {v1, v0, p0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$getFirebaseRemoteConfig$2;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->addOnConfigUpdateListener(Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    .line 48
    .line 49
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string v1, "android_id"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
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
    iput-object p1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 6
    .line 7
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
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
    move-result-object v1

    .line 7
    const-string v2, "cd_app_state_util"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/ContentResolver;

    .line 23
    .line 24
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object v0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Companion:Lcom/changdu/mobovideo/media/MediaNotificationManager$Companion;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    :cond_1
    invoke-virtual {v0, v1}, Lcom/changdu/mobovideo/media/MediaNotificationManager$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    new-instance v0, Lcom/changdu/mobovideo/AppFrontBackHelper;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/changdu/mobovideo/AppFrontBackHelper;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/app/Application;

    .line 67
    .line 68
    new-instance v1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onAttachedToEngine$1;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onAttachedToEngine$1;-><init>(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1, v1}, Lcom/changdu/mobovideo/AppFrontBackHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

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
    :try_start_0
    iget-object p1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    iget-object p1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwww()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iput-object p1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 26
    .line 27
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 22
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    iget-object v2, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v2, :cond_34

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    const-string v5, "duration"

    .line 17
    .line 18
    const/high16 v6, 0x3f800000    # 1.0f

    .line 19
    .line 20
    const-string v7, "playbackRate"

    .line 21
    .line 22
    const-string v8, "position"

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const-wide/16 v11, 0x0

    .line 26
    .line 27
    const/4 v13, 0x0

    .line 28
    sparse-switch v3, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_e

    .line 32
    .line 33
    :sswitch_0
    const-string v3, "setFirebaseCrashlyticsUserId"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    goto/16 :goto_e

    .line 42
    .line 43
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :sswitch_1
    const-string v0, "openProxy"

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    goto/16 :goto_e

    .line 66
    .line 67
    :cond_1
    :try_start_1
    new-instance v0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$1;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$1;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :sswitch_2
    const-string v3, "reportIAARevenue"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    goto/16 :goto_e

    .line 85
    .line 86
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :sswitch_3
    const-string v3, "saveUserRequestCache"

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_3

    .line 97
    .line 98
    goto/16 :goto_e

    .line 99
    .line 100
    :cond_3
    sget-object v2, Lcom/changdu/mobovideo/utils/CoroutineUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/CoroutineUtil;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/changdu/mobovideo/utils/CoroutineUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineScope;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    new-instance v6, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;

    .line 107
    .line 108
    invoke-direct {v6, v0, v1, v13}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;-><init>(Lio/flutter/plugin/common/MethodCall;Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Lkotlin/coroutines/Continuation;)V

    .line 109
    .line 110
    .line 111
    const/4 v7, 0x3

    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v4, 0x0

    .line 114
    const/4 v5, 0x0

    .line 115
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :sswitch_4
    const-string v3, "setFallbackHostMap"

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    goto/16 :goto_e

    .line 128
    .line 129
    :cond_4
    :try_start_2
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 130
    .line 131
    instance-of v2, v0, Ljava/util/HashMap;

    .line 132
    .line 133
    if-eqz v2, :cond_5

    .line 134
    .line 135
    move-object v13, v0

    .line 136
    check-cast v13, Ljava/util/HashMap;

    .line 137
    .line 138
    :cond_5
    if-nez v13, :cond_6

    .line 139
    .line 140
    goto/16 :goto_e

    .line 141
    .line 142
    :cond_6
    sget-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->INSTANCE:Lcom/changdu/component/httpbiz/CDHttpRequest;

    .line 143
    .line 144
    invoke-virtual {v0, v13}, Lcom/changdu/component/httpbiz/CDHttpRequest;->setRetryHostMap(Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :sswitch_5
    const-string v0, "getAndroidId"

    .line 149
    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_7

    .line 155
    .line 156
    goto/16 :goto_e

    .line 157
    .line 158
    :cond_7
    invoke-virtual {v1}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :sswitch_6
    const-string v3, "executeOnIdle"

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_8

    .line 173
    .line 174
    goto/16 :goto_e

    .line 175
    .line 176
    :cond_8
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 177
    .line 178
    instance-of v2, v0, Ljava/lang/Number;

    .line 179
    .line 180
    if-eqz v2, :cond_9

    .line 181
    .line 182
    check-cast v0, Ljava/lang/Number;

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_9
    move-object v0, v13

    .line 186
    :goto_0
    sget-object v2, Lcom/changdu/mobovideo/utils/AppUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/AppUtil;

    .line 187
    .line 188
    new-instance v3, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 189
    .line 190
    invoke-direct {v3, v10}, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 191
    .line 192
    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 196
    .line 197
    .line 198
    move-result-wide v4

    .line 199
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    :cond_a
    invoke-virtual {v2, v3, v13}, Lcom/changdu/mobovideo/utils/AppUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lkotlin/jvm/functions/Function0;Ljava/lang/Long;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :sswitch_7
    const-string v3, "setPlaybackState"

    .line 208
    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_b

    .line 214
    .line 215
    goto/16 :goto_e

    .line 216
    .line 217
    :cond_b
    :try_start_3
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 218
    .line 219
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 220
    .line 221
    if-eqz v2, :cond_c

    .line 222
    .line 223
    move-object v13, v0

    .line 224
    check-cast v13, Ljava/lang/Boolean;

    .line 225
    .line 226
    :cond_c
    if-eqz v13, :cond_d

    .line 227
    .line 228
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    :cond_d
    iget-object v0, v1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 233
    .line 234
    if-eqz v0, :cond_e

    .line 235
    .line 236
    invoke-virtual {v0, v9}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwww(Z)V

    .line 237
    .line 238
    .line 239
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 246
    .line 247
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_e

    .line 251
    .line 252
    :sswitch_8
    const-string v3, "updatePlaybackInfo"

    .line 253
    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-nez v2, :cond_f

    .line 259
    .line 260
    goto/16 :goto_e

    .line 261
    .line 262
    :cond_f
    :try_start_4
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 263
    .line 264
    instance-of v2, v0, Ljava/util/Map;

    .line 265
    .line 266
    if-eqz v2, :cond_10

    .line 267
    .line 268
    check-cast v0, Ljava/util/Map;

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_10
    move-object v0, v13

    .line 272
    :goto_1
    if-eqz v0, :cond_18

    .line 273
    .line 274
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    instance-of v3, v2, Ljava/lang/Double;

    .line 279
    .line 280
    if-eqz v3, :cond_11

    .line 281
    .line 282
    check-cast v2, Ljava/lang/Double;

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_11
    move-object v2, v13

    .line 286
    :goto_2
    if-eqz v2, :cond_12

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 289
    .line 290
    .line 291
    move-result-wide v2

    .line 292
    move-wide v15, v2

    .line 293
    goto :goto_3

    .line 294
    :cond_12
    move-wide v15, v11

    .line 295
    :goto_3
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    instance-of v3, v2, Ljava/lang/Number;

    .line 300
    .line 301
    if-eqz v3, :cond_13

    .line 302
    .line 303
    check-cast v2, Ljava/lang/Number;

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_13
    move-object v2, v13

    .line 307
    :goto_4
    if-eqz v2, :cond_14

    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    :cond_14
    move/from16 v17, v6

    .line 314
    .line 315
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    instance-of v2, v0, Ljava/lang/Double;

    .line 320
    .line 321
    if-eqz v2, :cond_15

    .line 322
    .line 323
    move-object v13, v0

    .line 324
    check-cast v13, Ljava/lang/Double;

    .line 325
    .line 326
    :cond_15
    if-eqz v13, :cond_16

    .line 327
    .line 328
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    .line 329
    .line 330
    .line 331
    move-result-wide v11

    .line 332
    :cond_16
    move-wide/from16 v18, v11

    .line 333
    .line 334
    iget-object v14, v1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 335
    .line 336
    if-eqz v14, :cond_17

    .line 337
    .line 338
    invoke-virtual/range {v14 .. v19}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwww(DFD)V

    .line 339
    .line 340
    .line 341
    :cond_17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 342
    .line 343
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :cond_18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 348
    .line 349
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :catch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 354
    .line 355
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_e

    .line 359
    .line 360
    :sswitch_9
    const-string v3, "setNowPlayingInfo"

    .line 361
    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-nez v2, :cond_19

    .line 367
    .line 368
    goto/16 :goto_e

    .line 369
    .line 370
    :cond_19
    :try_start_5
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 371
    .line 372
    instance-of v2, v0, Ljava/util/Map;

    .line 373
    .line 374
    if-eqz v2, :cond_1a

    .line 375
    .line 376
    check-cast v0, Ljava/util/Map;

    .line 377
    .line 378
    goto :goto_5

    .line 379
    :cond_1a
    move-object v0, v13

    .line 380
    :goto_5
    if-eqz v0, :cond_27

    .line 381
    .line 382
    const-string v2, "title"

    .line 383
    .line 384
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    instance-of v3, v2, Ljava/lang/String;

    .line 389
    .line 390
    if-eqz v3, :cond_1b

    .line 391
    .line 392
    check-cast v2, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_1b
    move-object v2, v13

    .line 396
    :goto_6
    const-string v3, ""

    .line 397
    .line 398
    if-nez v2, :cond_1c

    .line 399
    .line 400
    move-object v2, v3

    .line 401
    :cond_1c
    :try_start_6
    const-string v4, "artist"

    .line 402
    .line 403
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    instance-of v9, v4, Ljava/lang/String;

    .line 408
    .line 409
    if-eqz v9, :cond_1d

    .line 410
    .line 411
    check-cast v4, Ljava/lang/String;

    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_1d
    move-object v4, v13

    .line 415
    :goto_7
    if-nez v4, :cond_1e

    .line 416
    .line 417
    move-object v4, v3

    .line 418
    :cond_1e
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    instance-of v9, v5, Ljava/lang/Double;

    .line 423
    .line 424
    if-eqz v9, :cond_1f

    .line 425
    .line 426
    check-cast v5, Ljava/lang/Double;

    .line 427
    .line 428
    goto :goto_8

    .line 429
    :cond_1f
    move-object v5, v13

    .line 430
    :goto_8
    if-eqz v5, :cond_20

    .line 431
    .line 432
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 433
    .line 434
    .line 435
    move-result-wide v14

    .line 436
    goto :goto_9

    .line 437
    :cond_20
    move-wide v14, v11

    .line 438
    :goto_9
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    instance-of v8, v5, Ljava/lang/Double;

    .line 443
    .line 444
    if-eqz v8, :cond_21

    .line 445
    .line 446
    check-cast v5, Ljava/lang/Double;

    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_21
    move-object v5, v13

    .line 450
    :goto_a
    if-eqz v5, :cond_22

    .line 451
    .line 452
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 453
    .line 454
    .line 455
    move-result-wide v11

    .line 456
    :cond_22
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    instance-of v7, v5, Ljava/lang/Number;

    .line 461
    .line 462
    if-eqz v7, :cond_23

    .line 463
    .line 464
    check-cast v5, Ljava/lang/Number;

    .line 465
    .line 466
    goto :goto_b

    .line 467
    :cond_23
    move-object v5, v13

    .line 468
    :goto_b
    if-eqz v5, :cond_24

    .line 469
    .line 470
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    :cond_24
    move v8, v6

    .line 475
    const-string v5, "imageUrl"

    .line 476
    .line 477
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    instance-of v5, v0, Ljava/lang/String;

    .line 482
    .line 483
    if-eqz v5, :cond_25

    .line 484
    .line 485
    move-object v13, v0

    .line 486
    check-cast v13, Ljava/lang/String;

    .line 487
    .line 488
    :cond_25
    if-nez v13, :cond_26

    .line 489
    .line 490
    move-object v9, v3

    .line 491
    goto :goto_c

    .line 492
    :cond_26
    move-object v9, v13

    .line 493
    :goto_c
    sget-object v0, Lcom/changdu/mobovideo/utils/CoroutineUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/CoroutineUtil;

    .line 494
    .line 495
    invoke-virtual {v0}, Lcom/changdu/mobovideo/utils/CoroutineUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineScope;

    .line 496
    .line 497
    .line 498
    move-result-object v16

    .line 499
    new-instance v0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;

    .line 500
    .line 501
    move-wide v6, v11

    .line 502
    const/4 v11, 0x0

    .line 503
    move-object v3, v4

    .line 504
    move-wide v4, v14

    .line 505
    invoke-direct/range {v0 .. v11}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;-><init>(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V

    .line 506
    .line 507
    .line 508
    const/16 v20, 0x3

    .line 509
    .line 510
    const/16 v21, 0x0

    .line 511
    .line 512
    const/16 v17, 0x0

    .line 513
    .line 514
    const/16 v18, 0x0

    .line 515
    .line 516
    move-object/from16 v19, v0

    .line 517
    .line 518
    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :cond_27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 523
    .line 524
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 525
    .line 526
    .line 527
    return-void

    .line 528
    :catch_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 529
    .line 530
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_e

    .line 534
    .line 535
    :sswitch_a
    const-string v0, "checkMetaInstallReferrer"

    .line 536
    .line 537
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-nez v0, :cond_28

    .line 542
    .line 543
    goto/16 :goto_e

    .line 544
    .line 545
    :cond_28
    sget-object v0, Lcom/changdu/mobovideo/utils/CoroutineUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/CoroutineUtil;

    .line 546
    .line 547
    invoke-virtual {v0}, Lcom/changdu/mobovideo/utils/CoroutineUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineScope;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    new-instance v5, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$5;

    .line 552
    .line 553
    invoke-direct {v5, v1, v10, v13}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$5;-><init>(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V

    .line 554
    .line 555
    .line 556
    const/4 v6, 0x3

    .line 557
    const/4 v7, 0x0

    .line 558
    const/4 v3, 0x0

    .line 559
    const/4 v4, 0x0

    .line 560
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 561
    .line 562
    .line 563
    return-void

    .line 564
    :sswitch_b
    const-string v0, "initCDMems"

    .line 565
    .line 566
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-nez v0, :cond_29

    .line 571
    .line 572
    goto/16 :goto_e

    .line 573
    .line 574
    :cond_29
    :try_start_7
    iget-boolean v0, v1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 575
    .line 576
    if-nez v0, :cond_34

    .line 577
    .line 578
    iput-boolean v4, v1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 579
    .line 580
    sget-object v0, Lcom/changdu/component/memguard/CDMemGuard;->INSTANCE:Lcom/changdu/component/memguard/CDMemGuard;

    .line 581
    .line 582
    invoke-virtual {v0}, Lcom/changdu/component/memguard/CDMemGuard;->init()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 583
    .line 584
    .line 585
    return-void

    .line 586
    :sswitch_c
    const-string v0, "clearNowPlayingInfo"

    .line 587
    .line 588
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    if-nez v0, :cond_2a

    .line 593
    .line 594
    goto/16 :goto_e

    .line 595
    .line 596
    :cond_2a
    :try_start_8
    iget-object v0, v1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 597
    .line 598
    if-eqz v0, :cond_2b

    .line 599
    .line 600
    invoke-virtual {v0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 601
    .line 602
    .line 603
    :cond_2b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 604
    .line 605
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 606
    .line 607
    .line 608
    return-void

    .line 609
    :catch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 610
    .line 611
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_e

    .line 615
    .line 616
    :sswitch_d
    const-string v0, "getIntentString"

    .line 617
    .line 618
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    if-nez v0, :cond_2c

    .line 623
    .line 624
    goto/16 :goto_e

    .line 625
    .line 626
    :cond_2c
    iget-object v0, v1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 627
    .line 628
    if-eqz v0, :cond_2e

    .line 629
    .line 630
    if-eqz v0, :cond_2d

    .line 631
    .line 632
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    if-eqz v0, :cond_2d

    .line 637
    .line 638
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v13

    .line 642
    :cond_2d
    invoke-interface {v10, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    return-void

    .line 646
    :cond_2e
    invoke-interface {v10, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 647
    .line 648
    .line 649
    return-void

    .line 650
    :sswitch_e
    const-string v0, "getTotalMemByte"

    .line 651
    .line 652
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v0

    .line 656
    if-nez v0, :cond_2f

    .line 657
    .line 658
    goto :goto_e

    .line 659
    :cond_2f
    :try_start_9
    sget-object v0, Lcom/changdu/mobovideo/utils/AppUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/AppUtil;

    .line 660
    .line 661
    iget-object v2, v1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 662
    .line 663
    if-nez v2, :cond_30

    .line 664
    .line 665
    goto :goto_d

    .line 666
    :cond_30
    move-object v13, v2

    .line 667
    :goto_d
    invoke-virtual {v0, v13}, Lcom/changdu/mobovideo/utils/AppUtil;->Wwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)J

    .line 668
    .line 669
    .line 670
    move-result-wide v2

    .line 671
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 676
    .line 677
    .line 678
    return-void

    .line 679
    :catch_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-interface {v10, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    goto :goto_e

    .line 687
    :sswitch_f
    const-string v3, "nativeAESDecode"

    .line 688
    .line 689
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    if-nez v2, :cond_31

    .line 694
    .line 695
    goto :goto_e

    .line 696
    :cond_31
    sget-object v2, Lcom/changdu/mobovideo/utils/CoroutineUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/CoroutineUtil;

    .line 697
    .line 698
    invoke-virtual {v2}, Lcom/changdu/mobovideo/utils/CoroutineUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineScope;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    new-instance v6, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;

    .line 703
    .line 704
    invoke-direct {v6, v0, v10, v13}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V

    .line 705
    .line 706
    .line 707
    const/4 v7, 0x3

    .line 708
    const/4 v8, 0x0

    .line 709
    const/4 v4, 0x0

    .line 710
    const/4 v5, 0x0

    .line 711
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 712
    .line 713
    .line 714
    return-void

    .line 715
    :sswitch_10
    const-string v0, "tryTriggerGC"

    .line 716
    .line 717
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    if-nez v0, :cond_32

    .line 722
    .line 723
    goto :goto_e

    .line 724
    :cond_32
    sget-object v0, Lcom/changdu/mobovideo/utils/AppBizDataManager;->INSTANCE:Lcom/changdu/mobovideo/utils/AppBizDataManager;

    .line 725
    .line 726
    const-wide/16 v2, 0x0

    .line 727
    .line 728
    invoke-static {v0, v2, v3, v4, v13}, Lcom/changdu/mobovideo/utils/AppBizDataManager;->Wwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/AppBizDataManager;JILjava/lang/Object;)V

    .line 729
    .line 730
    .line 731
    return-void

    .line 732
    :sswitch_11
    const-string v0, "getFirebaseRemoteConfig"

    .line 733
    .line 734
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    if-nez v0, :cond_33

    .line 739
    .line 740
    goto :goto_e

    .line 741
    :cond_33
    :try_start_a
    invoke-virtual {v1}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 742
    .line 743
    .line 744
    :catch_5
    :catchall_0
    :cond_34
    :goto_e
    return-void

    .line 745
    :sswitch_data_0
    .sparse-switch
        -0x6ef934bb -> :sswitch_11
        -0x6e2c0ee7 -> :sswitch_10
        -0x4b912aba -> :sswitch_f
        -0x45779cf1 -> :sswitch_e
        -0x1d564fbd -> :sswitch_d
        -0x18d92b0d -> :sswitch_c
        -0xe932db1 -> :sswitch_b
        -0x8221813 -> :sswitch_a
        0x14001248 -> :sswitch_9
        0x16ddd0d2 -> :sswitch_8
        0x18c4b9f4 -> :sswitch_7
        0x2cbc7228 -> :sswitch_6
        0x42e1d134 -> :sswitch_5
        0x5190b090 -> :sswitch_4
        0x5544613b -> :sswitch_3
        0x5a5f15e7 -> :sswitch_2
        0x5b571244 -> :sswitch_1
        0x66e2f136 -> :sswitch_0
    .end sparse-switch
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
    iput-object p1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 6
    .line 7
    return-void
.end method
