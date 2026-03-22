.class public final Lcom/changdu/mobovideo/MainActivity;
.super Lio/flutter/embedding/android/FlutterActivity;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0014J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0014J\u001a\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/changdu/mobovideo/MainActivity;",
        "Lio/flutter/embedding/android/FlutterActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "configureFlutterEngine",
        "flutterEngine",
        "Lio/flutter/embedding/engine/FlutterEngine;",
        "onResume",
        "onUserLeaveHint",
        "onStop",
        "onPictureInPictureModeChanged",
        "isInPictureInPictureMode",
        "",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "cleanUpFlutterEngine",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public cleanUpFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/FlutterEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->unregisterNativeAdFactory(Lio/flutter/embedding/engine/FlutterEngine;Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 4
    .line 5
    .line 6
    const-string v0, "adInStoryFactory"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->unregisterNativeAdFactory(Lio/flutter/embedding/engine/FlutterEngine;Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/FlutterEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/changdu/mobovideo/plugins/AdProcessPlugin;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/changdu/mobovideo/plugins/AdProcessPlugin;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/changdu/mobovideo/plugins/CDReportPlugin;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/changdu/mobovideo/plugins/CDReportPlugin;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 42
    .line 43
    invoke-direct {v1}, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lcom/changdu/mobovideo/plugins/PushPlugin;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/changdu/mobovideo/plugins/PushPlugin;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/changdu/mobovideo/plugins/CDNetwork;

    .line 66
    .line 67
    invoke-direct {v1}, Lcom/changdu/mobovideo/plugins/CDNetwork;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin;

    .line 78
    .line 79
    invoke-direct {v1}, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;

    .line 90
    .line 91
    invoke-direct {v1}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;

    .line 102
    .line 103
    invoke-direct {v1}, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 107
    .line 108
    .line 109
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lcom/changdu/mobovideo/ad/NativeAdFactory;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Lcom/changdu/mobovideo/ad/NativeAdFactory;-><init>(Landroid/view/LayoutInflater;)V

    .line 119
    .line 120
    .line 121
    const-string v1, "adFactory"

    .line 122
    .line 123
    invoke-static {p1, v1, v0}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->registerNativeAdFactory(Lio/flutter/embedding/engine/FlutterEngine;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;)Z

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/changdu/mobovideo/ad/NativeAdInStoryFactory;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1}, Lcom/changdu/mobovideo/ad/NativeAdInStoryFactory;-><init>(Landroid/view/LayoutInflater;)V

    .line 133
    .line 134
    .line 135
    const-string v1, "adInStoryFactory"

    .line 136
    .line 137
    invoke-static {p1, v1, v0}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->registerNativeAdFactory(Lio/flutter/embedding/engine/FlutterEngine;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;)Z

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x2000

    .line 9
    .line 10
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/16 v0, 0x50

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemory(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;->Companion:Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$Companion;

    .line 45
    .line 46
    const p1, 0x7f11010c

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const p1, 0x7f11010d

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const p1, 0x7f110112

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const p1, 0x7f110113

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const p1, 0x7f110068

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const p1, 0x7f110067

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    move-object v2, p0

    .line 89
    invoke-virtual/range {v1 .. v8}, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Lcom/changdu/mobovideo/googleengage/AppEngageBroadcastReceiver;->Companion:Lcom/changdu/mobovideo/googleengage/AppEngageBroadcastReceiver$Companion;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Lcom/changdu/mobovideo/googleengage/AppEngageBroadcastReceiver$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    move-object v2, p0

    .line 103
    :goto_0
    sget-object p1, Lcom/changdu/component/push/base/PushManager;->INSTANCE:Lcom/changdu/component/push/base/PushManager;

    .line 104
    .line 105
    new-instance v0, Lcom/changdu/mobovideo/MainActivity$onCreate$1;

    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/changdu/mobovideo/MainActivity$onCreate$1;-><init>(Lcom/changdu/mobovideo/MainActivity;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/changdu/component/push/base/PushManager;->setTokenCallback(Lcom/changdu/component/push/base/BaseTokenCallback;)V

    .line 111
    .line 112
    .line 113
    sget-object p1, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;->Companion:Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$Companion;

    .line 114
    .line 115
    invoke-virtual {p1, p0}, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    :try_start_0
    sget-object p1, Lcom/changdu/mobovideo/picture/account/AccountSyncManager;->INSTANCE:Lcom/changdu/mobovideo/picture/account/AccountSyncManager;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lcom/changdu/mobovideo/picture/account/AccountSyncManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v1, "activity_bootstrap"

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/changdu/mobovideo/picture/account/AccountSyncManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget-object p1, Lcom/changdu/mobovideo/picture/CDJobScheduler;->INSTANCE:Lcom/changdu/mobovideo/picture/CDJobScheduler;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/changdu/mobovideo/picture/CDJobScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 139
    .line 140
    .line 141
    sget-object p1, Lcom/changdu/mobovideo/picture/receiver/AlarmReceiver;->Companion:Lcom/changdu/mobovideo/picture/receiver/AlarmReceiver$Companion;

    .line 142
    .line 143
    invoke-virtual {p1, p0}, Lcom/changdu/mobovideo/picture/receiver/AlarmReceiver$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    :catchall_0
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2
    .param p2    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const-class v1, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    instance-of v1, v0, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;ZLandroid/content/res/Configuration;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const-class v1, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    instance-of v1, v0, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    check-cast v0, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getActivity()Landroid/app/Activity;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, LWwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onResume()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const-class v1, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    instance-of v1, v0, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onStop()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    .line 1
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onUserLeaveHint()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const-class v1, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    instance-of v1, v0, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    check-cast v0, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0, p0}, Lcom/changdu/mobovideo/plugins/PipUtilPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_1
    return-void
.end method
