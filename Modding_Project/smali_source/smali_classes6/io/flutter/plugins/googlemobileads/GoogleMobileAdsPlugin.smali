.class public Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;,
        Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$FlutterInitializationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleMobileAdsPlugin"


# instance fields
.field private adMessageCodec:Lio/flutter/plugins/googlemobileads/AdMessageCodec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private appStateNotifier:Lio/flutter/plugins/googlemobileads/AppStateNotifier;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

.field private instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final nativeAdFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;",
            ">;"
        }
    .end annotation
.end field

.field private pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userMessagingPlatformManager:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->nativeAdFactories:Ljava/util/Map;

    .line 3
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    invoke-direct {v0}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;Lio/flutter/plugins/googlemobileads/AdInstanceManager;Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->nativeAdFactories:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 7
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 8
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugins/googlemobileads/AppStateNotifier;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/googlemobileads/AppStateNotifier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->nativeAdFactories:Ljava/util/Map;

    .line 11
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->appStateNotifier:Lio/flutter/plugins/googlemobileads/AppStateNotifier;

    .line 12
    new-instance p1, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    invoke-direct {p1}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    return-void
.end method

.method private addNativeAdFactory(Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->nativeAdFactories:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string p2, "A NativeAdFactory with the following factoryId already exists: %s"

    .line 12
    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    aput-object p1, v1, v0

    .line 16
    .line 17
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->nativeAdFactories:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return v1
.end method

.method public static registerMediationNetworkExtrasProvider(Lio/flutter/embedding/engine/FlutterEngine;Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 18
    .line 19
    iget-object p0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->adMessageCodec:Lio/flutter/plugins/googlemobileads/AdMessageCodec;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->setMediationNetworkExtrasProvider(Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public static registerNativeAdFactory(Lio/flutter/embedding/engine/FlutterEngine;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object p0

    const-class v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;

    invoke-interface {p0, v0}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;

    .line 2
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->registerNativeAdFactory(Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;)Z

    move-result p0

    return p0
.end method

.method private static registerNativeAdFactory(Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->addNativeAdFactory(Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    const-class p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 6
    const-string p0, "Could not find a %s instance. The plugin may have not been registered."

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeNativeAdFactory(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->nativeAdFactories:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 8
    .line 9
    return-object p1
.end method

.method private static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static unregisterMediationNetworkExtrasProvider(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->adMessageCodec:Lio/flutter/plugins/googlemobileads/AdMessageCodec;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->setMediationNetworkExtrasProvider(Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-object v1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 25
    .line 26
    return-void
.end method

.method public static unregisterNativeAdFactory(Lio/flutter/embedding/engine/FlutterEngine;Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    check-cast p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->removeNativeAdFactory(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method


# virtual methods
.method public getBannerAdCreator(Landroid/content/Context;)Lio/flutter/plugins/googlemobileads/BannerAdCreator;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/googlemobileads/BannerAdCreator;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/flutter/plugins/googlemobileads/BannerAdCreator;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->setActivity(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->adMessageCodec:Lio/flutter/plugins/googlemobileads/AdMessageCodec;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->setContext(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->userMessagingPlatformManager:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->setActivity(Landroid/app/Activity;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    new-instance v0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;-><init>(Landroid/content/Context;Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->adMessageCodec:Lio/flutter/plugins/googlemobileads/AdMessageCodec;

    .line 22
    .line 23
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->setMediationNetworkExtrasProvider(Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 31
    .line 32
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lio/flutter/plugin/common/StandardMethodCodec;

    .line 37
    .line 38
    iget-object v3, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->adMessageCodec:Lio/flutter/plugins/googlemobileads/AdMessageCodec;

    .line 39
    .line 40
    invoke-direct {v2, v3}, Lio/flutter/plugin/common/StandardMethodCodec;-><init>(Lio/flutter/plugin/common/StandardMessageCodec;)V

    .line 41
    .line 42
    .line 43
    const-string v3, "plugins.flutter.io/google_mobile_ads"

    .line 44
    .line 45
    invoke-direct {v0, v1, v3, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 57
    .line 58
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory;

    .line 63
    .line 64
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 65
    .line 66
    invoke-direct {v1, v2}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory;-><init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "plugins.flutter.io/google_mobile_ads/ad_widget"

    .line 70
    .line 71
    invoke-interface {v0, v2, v1}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 72
    .line 73
    .line 74
    new-instance v0, Lio/flutter/plugins/googlemobileads/AppStateNotifier;

    .line 75
    .line 76
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, v1}, Lio/flutter/plugins/googlemobileads/AppStateNotifier;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->appStateNotifier:Lio/flutter/plugins/googlemobileads/AppStateNotifier;

    .line 84
    .line 85
    new-instance v0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;

    .line 86
    .line 87
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {v0, v1, p1}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->userMessagingPlatformManager:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;

    .line 99
    .line 100
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->adMessageCodec:Lio/flutter/plugins/googlemobileads/AdMessageCodec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->setContext(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->setActivity(Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->userMessagingPlatformManager:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->setActivity(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->adMessageCodec:Lio/flutter/plugins/googlemobileads/AdMessageCodec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->setContext(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->setActivity(Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->userMessagingPlatformManager:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->setActivity(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->appStateNotifier:Lio/flutter/plugins/googlemobileads/AppStateNotifier;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/flutter/plugins/googlemobileads/AppStateNotifier;->stop()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->appStateNotifier:Lio/flutter/plugins/googlemobileads/AppStateNotifier;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 21
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
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
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 10
    .line 11
    if-eqz v5, :cond_2d

    .line 12
    .line 13
    iget-object v6, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 14
    .line 15
    if-nez v6, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v5}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->getActivity()Landroid/app/Activity;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    iget-object v5, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 26
    .line 27
    invoke-virtual {v5}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->getActivity()Landroid/app/Activity;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v5, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 33
    .line 34
    invoke-virtual {v5}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    :goto_0
    iget-object v6, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string v7, "A null or invalid ad request was provided."

    .line 44
    .line 45
    const-string v8, "InvalidRequest"

    .line 46
    .line 47
    const-string v9, "adManagerRequest"

    .line 48
    .line 49
    const-string v10, "request"

    .line 50
    .line 51
    const-string v11, "adUnitId"

    .line 52
    .line 53
    const-string v12, "adId"

    .line 54
    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, -0x1

    .line 57
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v15

    .line 61
    sparse-switch v15, :sswitch_data_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :sswitch_0
    const-string v15, "loadRewardedInterstitialAd"

    .line 67
    .line 68
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_2

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_2
    const/16 v14, 0x19

    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :sswitch_1
    const-string v15, "setImmersiveMode"

    .line 81
    .line 82
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_3

    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :cond_3
    const/16 v14, 0x18

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :sswitch_2
    const-string v15, "MobileAds#initialize"

    .line 95
    .line 96
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-nez v6, :cond_4

    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_4
    const/16 v14, 0x17

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :sswitch_3
    const-string v15, "showAdWithoutView"

    .line 109
    .line 110
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-nez v6, :cond_5

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_5
    const/16 v14, 0x16

    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :sswitch_4
    const-string v15, "MobileAds#openAdInspector"

    .line 123
    .line 124
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-nez v6, :cond_6

    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_6
    const/16 v14, 0x15

    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :sswitch_5
    const-string v15, "MobileAds#disableMediationInitialization"

    .line 137
    .line 138
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-nez v6, :cond_7

    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :cond_7
    const/16 v14, 0x14

    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :sswitch_6
    const-string v15, "MobileAds#updateRequestConfiguration"

    .line 151
    .line 152
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-nez v6, :cond_8

    .line 157
    .line 158
    goto/16 :goto_1

    .line 159
    .line 160
    :cond_8
    const/16 v14, 0x13

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :sswitch_7
    const-string v15, "getAdSize"

    .line 165
    .line 166
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-nez v6, :cond_9

    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :cond_9
    const/16 v14, 0x12

    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :sswitch_8
    const-string v15, "disposeAd"

    .line 179
    .line 180
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-nez v6, :cond_a

    .line 185
    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :cond_a
    const/16 v14, 0x11

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :sswitch_9
    const-string v15, "_init"

    .line 193
    .line 194
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-nez v6, :cond_b

    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_b
    const/16 v14, 0x10

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :sswitch_a
    const-string v15, "loadAdManagerBannerAd"

    .line 207
    .line 208
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-nez v6, :cond_c

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_c
    const/16 v14, 0xf

    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :sswitch_b
    const-string v15, "MobileAds#getVersionString"

    .line 221
    .line 222
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-nez v6, :cond_d

    .line 227
    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :cond_d
    const/16 v14, 0xe

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :sswitch_c
    const-string v15, "MobileAds#setAppVolume"

    .line 235
    .line 236
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-nez v6, :cond_e

    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :cond_e
    const/16 v14, 0xd

    .line 245
    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :sswitch_d
    const-string v15, "loadBannerAd"

    .line 249
    .line 250
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-nez v6, :cond_f

    .line 255
    .line 256
    goto/16 :goto_1

    .line 257
    .line 258
    :cond_f
    const/16 v14, 0xc

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :sswitch_e
    const-string v15, "loadAdManagerInterstitialAd"

    .line 263
    .line 264
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-nez v6, :cond_10

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :cond_10
    const/16 v14, 0xb

    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :sswitch_f
    const-string v15, "AdSize#getAnchoredAdaptiveBannerAdSize"

    .line 277
    .line 278
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-nez v6, :cond_11

    .line 283
    .line 284
    goto/16 :goto_1

    .line 285
    .line 286
    :cond_11
    const/16 v14, 0xa

    .line 287
    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :sswitch_10
    const-string v15, "setServerSideVerificationOptions"

    .line 291
    .line 292
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-nez v6, :cond_12

    .line 297
    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :cond_12
    const/16 v14, 0x9

    .line 301
    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :sswitch_11
    const-string v15, "loadNativeAd"

    .line 305
    .line 306
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-nez v6, :cond_13

    .line 311
    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :cond_13
    const/16 v14, 0x8

    .line 315
    .line 316
    goto/16 :goto_1

    .line 317
    .line 318
    :sswitch_12
    const-string v15, "loadFluidAd"

    .line 319
    .line 320
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-nez v6, :cond_14

    .line 325
    .line 326
    goto :goto_1

    .line 327
    :cond_14
    const/4 v14, 0x7

    .line 328
    goto :goto_1

    .line 329
    :sswitch_13
    const-string v15, "MobileAds#getRequestConfiguration"

    .line 330
    .line 331
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    if-nez v6, :cond_15

    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_15
    const/4 v14, 0x6

    .line 339
    goto :goto_1

    .line 340
    :sswitch_14
    const-string v15, "loadRewardedAd"

    .line 341
    .line 342
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    if-nez v6, :cond_16

    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_16
    const/4 v14, 0x5

    .line 350
    goto :goto_1

    .line 351
    :sswitch_15
    const-string v15, "MobileAds#registerWebView"

    .line 352
    .line 353
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-nez v6, :cond_17

    .line 358
    .line 359
    goto :goto_1

    .line 360
    :cond_17
    const/4 v14, 0x4

    .line 361
    goto :goto_1

    .line 362
    :sswitch_16
    const-string v15, "loadAppOpenAd"

    .line 363
    .line 364
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v6

    .line 368
    if-nez v6, :cond_18

    .line 369
    .line 370
    goto :goto_1

    .line 371
    :cond_18
    const/4 v14, 0x3

    .line 372
    goto :goto_1

    .line 373
    :sswitch_17
    const-string v15, "MobileAds#setAppMuted"

    .line 374
    .line 375
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    if-nez v6, :cond_19

    .line 380
    .line 381
    goto :goto_1

    .line 382
    :cond_19
    const/4 v14, 0x2

    .line 383
    goto :goto_1

    .line 384
    :sswitch_18
    const-string v15, "loadInterstitialAd"

    .line 385
    .line 386
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v6

    .line 390
    if-nez v6, :cond_1a

    .line 391
    .line 392
    goto :goto_1

    .line 393
    :cond_1a
    move v14, v3

    .line 394
    goto :goto_1

    .line 395
    :sswitch_19
    const-string v15, "MobileAds#openDebugMenu"

    .line 396
    .line 397
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    if-nez v6, :cond_1b

    .line 402
    .line 403
    goto :goto_1

    .line 404
    :cond_1b
    move v14, v4

    .line 405
    :goto_1
    packed-switch v14, :pswitch_data_0

    .line 406
    .line 407
    .line 408
    invoke-interface {v2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :pswitch_0
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    check-cast v3, Ljava/lang/String;

    .line 417
    .line 418
    invoke-static {v3}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    move-object/from16 v17, v3

    .line 423
    .line 424
    check-cast v17, Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    move-object/from16 v18, v3

    .line 431
    .line 432
    check-cast v18, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 433
    .line 434
    invoke-virtual {v1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    check-cast v3, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 439
    .line 440
    if-eqz v18, :cond_1c

    .line 441
    .line 442
    new-instance v14, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;

    .line 443
    .line 444
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    check-cast v3, Ljava/lang/Integer;

    .line 449
    .line 450
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 451
    .line 452
    .line 453
    move-result v15

    .line 454
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 455
    .line 456
    invoke-static {v3}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    move-object/from16 v16, v3

    .line 461
    .line 462
    check-cast v16, Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 463
    .line 464
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 465
    .line 466
    invoke-direct {v3, v5}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;-><init>(Landroid/content/Context;)V

    .line 467
    .line 468
    .line 469
    move-object/from16 v19, v3

    .line 470
    .line 471
    invoke-direct/range {v14 .. v19}, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)V

    .line 472
    .line 473
    .line 474
    goto :goto_2

    .line 475
    :cond_1c
    if-eqz v3, :cond_1d

    .line 476
    .line 477
    new-instance v14, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;

    .line 478
    .line 479
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    check-cast v4, Ljava/lang/Integer;

    .line 484
    .line 485
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 486
    .line 487
    .line 488
    move-result v15

    .line 489
    iget-object v4, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 490
    .line 491
    invoke-static {v4}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    move-object/from16 v16, v4

    .line 496
    .line 497
    check-cast v16, Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 498
    .line 499
    new-instance v4, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 500
    .line 501
    invoke-direct {v4, v5}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;-><init>(Landroid/content/Context;)V

    .line 502
    .line 503
    .line 504
    move-object/from16 v18, v3

    .line 505
    .line 506
    move-object/from16 v19, v4

    .line 507
    .line 508
    invoke-direct/range {v14 .. v19}, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)V

    .line 509
    .line 510
    .line 511
    :goto_2
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 512
    .line 513
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    check-cast v1, Ljava/lang/Integer;

    .line 518
    .line 519
    invoke-static {v1}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    check-cast v1, Ljava/lang/Integer;

    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    invoke-virtual {v3, v14, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->trackAd(Lio/flutter/plugins/googlemobileads/FlutterAd;I)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v14}, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->load()V

    .line 533
    .line 534
    .line 535
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    return-void

    .line 539
    :cond_1d
    invoke-interface {v2, v8, v7, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :pswitch_1
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 544
    .line 545
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    check-cast v4, Ljava/lang/Integer;

    .line 550
    .line 551
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->adForId(I)Lio/flutter/plugins/googlemobileads/FlutterAd;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    check-cast v3, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterOverlayAd;

    .line 560
    .line 561
    const-string v4, "immersiveModeEnabled"

    .line 562
    .line 563
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    check-cast v1, Ljava/lang/Boolean;

    .line 568
    .line 569
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    invoke-virtual {v3, v1}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterOverlayAd;->setImmersiveMode(Z)V

    .line 574
    .line 575
    .line 576
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    return-void

    .line 580
    :pswitch_2
    iget-object v1, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    .line 581
    .line 582
    new-instance v3, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$FlutterInitializationListener;

    .line 583
    .line 584
    invoke-direct {v3, v2, v13}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$FlutterInitializationListener;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$1;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v5, v3}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 588
    .line 589
    .line 590
    return-void

    .line 591
    :pswitch_3
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 592
    .line 593
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    check-cast v1, Ljava/lang/Integer;

    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    invoke-virtual {v3, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->showAdWithId(I)Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-nez v1, :cond_1e

    .line 608
    .line 609
    const-string v1, "AdShowError"

    .line 610
    .line 611
    const-string v3, "Ad failed to show."

    .line 612
    .line 613
    invoke-interface {v2, v1, v3, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    return-void

    .line 617
    :cond_1e
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    return-void

    .line 621
    :pswitch_4
    iget-object v1, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    .line 622
    .line 623
    new-instance v3, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$1;

    .line 624
    .line 625
    invoke-direct {v3, v0, v2}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$1;-><init>(Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1, v5, v3}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;->openAdInspector(Landroid/content/Context;Lcom/google/android/gms/ads/OnAdInspectorClosedListener;)V

    .line 629
    .line 630
    .line 631
    return-void

    .line 632
    :pswitch_5
    iget-object v1, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    .line 633
    .line 634
    invoke-virtual {v1, v5}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;->disableMediationInitialization(Landroid/content/Context;)V

    .line 635
    .line 636
    .line 637
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    return-void

    .line 641
    :pswitch_6
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    invoke-virtual {v3}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    const-string v4, "maxAdContentRating"

    .line 650
    .line 651
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v4

    .line 655
    check-cast v4, Ljava/lang/String;

    .line 656
    .line 657
    const-string v5, "tagForChildDirectedTreatment"

    .line 658
    .line 659
    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    check-cast v5, Ljava/lang/Integer;

    .line 664
    .line 665
    const-string v6, "tagForUnderAgeOfConsent"

    .line 666
    .line 667
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    check-cast v6, Ljava/lang/Integer;

    .line 672
    .line 673
    const-string v7, "testDeviceIds"

    .line 674
    .line 675
    invoke-virtual {v1, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    check-cast v1, Ljava/util/List;

    .line 680
    .line 681
    if-eqz v4, :cond_1f

    .line 682
    .line 683
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 684
    .line 685
    .line 686
    :cond_1f
    if-eqz v5, :cond_20

    .line 687
    .line 688
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 693
    .line 694
    .line 695
    :cond_20
    if-eqz v6, :cond_21

    .line 696
    .line 697
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 702
    .line 703
    .line 704
    :cond_21
    if-eqz v1, :cond_22

    .line 705
    .line 706
    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 707
    .line 708
    .line 709
    :cond_22
    invoke-virtual {v3}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-static {v1}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 714
    .line 715
    .line 716
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    return-void

    .line 720
    :pswitch_7
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 721
    .line 722
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    check-cast v1, Ljava/lang/Integer;

    .line 727
    .line 728
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 729
    .line 730
    .line 731
    move-result v1

    .line 732
    invoke-virtual {v3, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->adForId(I)Lio/flutter/plugins/googlemobileads/FlutterAd;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    if-nez v1, :cond_23

    .line 737
    .line 738
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 739
    .line 740
    .line 741
    return-void

    .line 742
    :cond_23
    instance-of v3, v1, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;

    .line 743
    .line 744
    if-eqz v3, :cond_24

    .line 745
    .line 746
    check-cast v1, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;

    .line 747
    .line 748
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->getAdSize()Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 753
    .line 754
    .line 755
    return-void

    .line 756
    :cond_24
    instance-of v3, v1, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;

    .line 757
    .line 758
    if-eqz v3, :cond_25

    .line 759
    .line 760
    check-cast v1, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;

    .line 761
    .line 762
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->getAdSize()Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 767
    .line 768
    .line 769
    return-void

    .line 770
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 771
    .line 772
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 773
    .line 774
    .line 775
    const-string v4, "Unexpected ad type for getAdSize: "

    .line 776
    .line 777
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    const-string v3, "unexpected_ad_type"

    .line 788
    .line 789
    invoke-interface {v2, v3, v1, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 790
    .line 791
    .line 792
    return-void

    .line 793
    :pswitch_8
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 794
    .line 795
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    check-cast v1, Ljava/lang/Integer;

    .line 800
    .line 801
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    invoke-virtual {v3, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->disposeAd(I)V

    .line 806
    .line 807
    .line 808
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 809
    .line 810
    .line 811
    return-void

    .line 812
    :pswitch_9
    iget-object v1, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 813
    .line 814
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->disposeAllAds()V

    .line 815
    .line 816
    .line 817
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 818
    .line 819
    .line 820
    return-void

    .line 821
    :pswitch_a
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;

    .line 822
    .line 823
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v4

    .line 827
    check-cast v4, Ljava/lang/Integer;

    .line 828
    .line 829
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 830
    .line 831
    .line 832
    move-result v4

    .line 833
    iget-object v6, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 834
    .line 835
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v7

    .line 839
    check-cast v7, Ljava/lang/String;

    .line 840
    .line 841
    const-string v8, "sizes"

    .line 842
    .line 843
    invoke-virtual {v1, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v8

    .line 847
    check-cast v8, Ljava/util/List;

    .line 848
    .line 849
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v9

    .line 853
    check-cast v9, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 854
    .line 855
    move-object v10, v6

    .line 856
    move-object v6, v7

    .line 857
    move-object v7, v8

    .line 858
    move-object v8, v9

    .line 859
    invoke-virtual {v0, v5}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->getBannerAdCreator(Landroid/content/Context;)Lio/flutter/plugins/googlemobileads/BannerAdCreator;

    .line 860
    .line 861
    .line 862
    move-result-object v9

    .line 863
    move-object v5, v10

    .line 864
    invoke-direct/range {v3 .. v9}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/BannerAdCreator;)V

    .line 865
    .line 866
    .line 867
    iget-object v4, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 868
    .line 869
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    check-cast v1, Ljava/lang/Integer;

    .line 874
    .line 875
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 876
    .line 877
    .line 878
    move-result v1

    .line 879
    invoke-virtual {v4, v3, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->trackAd(Lio/flutter/plugins/googlemobileads/FlutterAd;I)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v3}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->load()V

    .line 883
    .line 884
    .line 885
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 886
    .line 887
    .line 888
    return-void

    .line 889
    :pswitch_b
    iget-object v1, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    .line 890
    .line 891
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;->getVersionString()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 896
    .line 897
    .line 898
    return-void

    .line 899
    :pswitch_c
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    .line 900
    .line 901
    const-string v4, "volume"

    .line 902
    .line 903
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    check-cast v1, Ljava/lang/Double;

    .line 908
    .line 909
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 910
    .line 911
    .line 912
    move-result-wide v4

    .line 913
    invoke-virtual {v3, v4, v5}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;->setAppVolume(D)V

    .line 914
    .line 915
    .line 916
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 917
    .line 918
    .line 919
    return-void

    .line 920
    :pswitch_d
    new-instance v14, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;

    .line 921
    .line 922
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v3

    .line 926
    check-cast v3, Ljava/lang/Integer;

    .line 927
    .line 928
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 929
    .line 930
    .line 931
    move-result v15

    .line 932
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 933
    .line 934
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v4

    .line 938
    move-object/from16 v17, v4

    .line 939
    .line 940
    check-cast v17, Ljava/lang/String;

    .line 941
    .line 942
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v4

    .line 946
    move-object/from16 v18, v4

    .line 947
    .line 948
    check-cast v18, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 949
    .line 950
    const-string v4, "size"

    .line 951
    .line 952
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v4

    .line 956
    move-object/from16 v19, v4

    .line 957
    .line 958
    check-cast v19, Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 959
    .line 960
    invoke-virtual {v0, v5}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->getBannerAdCreator(Landroid/content/Context;)Lio/flutter/plugins/googlemobileads/BannerAdCreator;

    .line 961
    .line 962
    .line 963
    move-result-object v20

    .line 964
    move-object/from16 v16, v3

    .line 965
    .line 966
    invoke-direct/range {v14 .. v20}, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdSize;Lio/flutter/plugins/googlemobileads/BannerAdCreator;)V

    .line 967
    .line 968
    .line 969
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 970
    .line 971
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    check-cast v1, Ljava/lang/Integer;

    .line 976
    .line 977
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 978
    .line 979
    .line 980
    move-result v1

    .line 981
    invoke-virtual {v3, v14, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->trackAd(Lio/flutter/plugins/googlemobileads/FlutterAd;I)V

    .line 982
    .line 983
    .line 984
    invoke-virtual {v14}, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->load()V

    .line 985
    .line 986
    .line 987
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 988
    .line 989
    .line 990
    return-void

    .line 991
    :pswitch_e
    new-instance v4, Lio/flutter/plugins/googlemobileads/FlutterAdManagerInterstitialAd;

    .line 992
    .line 993
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v3

    .line 997
    check-cast v3, Ljava/lang/Integer;

    .line 998
    .line 999
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1000
    .line 1001
    .line 1002
    move-result v3

    .line 1003
    iget-object v6, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1004
    .line 1005
    invoke-static {v6}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v6

    .line 1009
    check-cast v6, Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1010
    .line 1011
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v7

    .line 1015
    check-cast v7, Ljava/lang/String;

    .line 1016
    .line 1017
    invoke-static {v7}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v7

    .line 1021
    check-cast v7, Ljava/lang/String;

    .line 1022
    .line 1023
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v8

    .line 1027
    check-cast v8, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 1028
    .line 1029
    new-instance v9, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 1030
    .line 1031
    invoke-direct {v9, v5}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;-><init>(Landroid/content/Context;)V

    .line 1032
    .line 1033
    .line 1034
    move v5, v3

    .line 1035
    invoke-direct/range {v4 .. v9}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerInterstitialAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)V

    .line 1036
    .line 1037
    .line 1038
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1039
    .line 1040
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    check-cast v1, Ljava/lang/Integer;

    .line 1045
    .line 1046
    invoke-static {v1}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v1

    .line 1050
    check-cast v1, Ljava/lang/Integer;

    .line 1051
    .line 1052
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1053
    .line 1054
    .line 1055
    move-result v1

    .line 1056
    invoke-virtual {v3, v4, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->trackAd(Lio/flutter/plugins/googlemobileads/FlutterAd;I)V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v4}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerInterstitialAd;->load()V

    .line 1060
    .line 1061
    .line 1062
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1063
    .line 1064
    .line 1065
    return-void

    .line 1066
    :pswitch_f
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AnchoredAdaptiveBannerAdSize;

    .line 1067
    .line 1068
    new-instance v4, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;

    .line 1069
    .line 1070
    invoke-direct {v4}, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;-><init>()V

    .line 1071
    .line 1072
    .line 1073
    const-string v6, "orientation"

    .line 1074
    .line 1075
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v6

    .line 1079
    check-cast v6, Ljava/lang/String;

    .line 1080
    .line 1081
    const-string v7, "width"

    .line 1082
    .line 1083
    invoke-virtual {v1, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    check-cast v1, Ljava/lang/Integer;

    .line 1088
    .line 1089
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1090
    .line 1091
    .line 1092
    move-result v1

    .line 1093
    invoke-direct {v3, v5, v4, v6, v1}, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AnchoredAdaptiveBannerAdSize;-><init>(Landroid/content/Context;Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;Ljava/lang/String;I)V

    .line 1094
    .line 1095
    .line 1096
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    .line 1097
    .line 1098
    iget-object v4, v3, Lio/flutter/plugins/googlemobileads/FlutterAdSize;->size:Lcom/google/android/gms/ads/AdSize;

    .line 1099
    .line 1100
    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v1

    .line 1104
    if-eqz v1, :cond_26

    .line 1105
    .line 1106
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1107
    .line 1108
    .line 1109
    return-void

    .line 1110
    :cond_26
    iget v1, v3, Lio/flutter/plugins/googlemobileads/FlutterAdSize;->height:I

    .line 1111
    .line 1112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v1

    .line 1116
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1117
    .line 1118
    .line 1119
    return-void

    .line 1120
    :pswitch_10
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1121
    .line 1122
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v4

    .line 1126
    check-cast v4, Ljava/lang/Integer;

    .line 1127
    .line 1128
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1129
    .line 1130
    .line 1131
    move-result v4

    .line 1132
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->adForId(I)Lio/flutter/plugins/googlemobileads/FlutterAd;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v3

    .line 1136
    const-string v4, "serverSideVerificationOptions"

    .line 1137
    .line 1138
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v1

    .line 1142
    check-cast v1, Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;

    .line 1143
    .line 1144
    if-nez v3, :cond_27

    .line 1145
    .line 1146
    goto :goto_3

    .line 1147
    :cond_27
    instance-of v4, v3, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd;

    .line 1148
    .line 1149
    if-eqz v4, :cond_28

    .line 1150
    .line 1151
    check-cast v3, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd;

    .line 1152
    .line 1153
    invoke-virtual {v3, v1}, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd;->setServerSideVerificationOptions(Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;)V

    .line 1154
    .line 1155
    .line 1156
    goto :goto_3

    .line 1157
    :cond_28
    instance-of v4, v3, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;

    .line 1158
    .line 1159
    if-eqz v4, :cond_29

    .line 1160
    .line 1161
    check-cast v3, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;

    .line 1162
    .line 1163
    invoke-virtual {v3, v1}, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->setServerSideVerificationOptions(Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;)V

    .line 1164
    .line 1165
    .line 1166
    :cond_29
    :goto_3
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1167
    .line 1168
    .line 1169
    return-void

    .line 1170
    :pswitch_11
    const-string v6, "factoryId"

    .line 1171
    .line 1172
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v6

    .line 1176
    check-cast v6, Ljava/lang/String;

    .line 1177
    .line 1178
    iget-object v7, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->nativeAdFactories:Ljava/util/Map;

    .line 1179
    .line 1180
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v7

    .line 1184
    check-cast v7, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 1185
    .line 1186
    const-string v8, "nativeTemplateStyle"

    .line 1187
    .line 1188
    invoke-virtual {v1, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v14

    .line 1192
    check-cast v14, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    .line 1193
    .line 1194
    if-nez v7, :cond_2a

    .line 1195
    .line 1196
    if-nez v14, :cond_2a

    .line 1197
    .line 1198
    const-string v1, "No NativeAdFactory with id: %s or nativeTemplateStyle"

    .line 1199
    .line 1200
    new-array v3, v3, [Ljava/lang/Object;

    .line 1201
    .line 1202
    aput-object v6, v3, v4

    .line 1203
    .line 1204
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v1

    .line 1208
    const-string v3, "NativeAdError"

    .line 1209
    .line 1210
    invoke-interface {v2, v3, v1, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1211
    .line 1212
    .line 1213
    return-void

    .line 1214
    :cond_2a
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1215
    .line 1216
    invoke-direct {v3, v5}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;-><init>(Landroid/content/Context;)V

    .line 1217
    .line 1218
    .line 1219
    iget-object v4, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1220
    .line 1221
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->setManager(Lio/flutter/plugins/googlemobileads/AdInstanceManager;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v3

    .line 1225
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v4

    .line 1229
    check-cast v4, Ljava/lang/String;

    .line 1230
    .line 1231
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->setAdUnitId(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v3

    .line 1235
    invoke-virtual {v3, v7}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->setAdFactory(Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v3

    .line 1239
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v4

    .line 1243
    check-cast v4, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 1244
    .line 1245
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->setRequest(Lio/flutter/plugins/googlemobileads/FlutterAdRequest;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v3

    .line 1249
    invoke-virtual {v1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v4

    .line 1253
    check-cast v4, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 1254
    .line 1255
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->setAdManagerRequest(Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v3

    .line 1259
    const-string v4, "customOptions"

    .line 1260
    .line 1261
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v4

    .line 1265
    check-cast v4, Ljava/util/Map;

    .line 1266
    .line 1267
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->setCustomOptions(Ljava/util/Map;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v3

    .line 1271
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v4

    .line 1275
    check-cast v4, Ljava/lang/Integer;

    .line 1276
    .line 1277
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1278
    .line 1279
    .line 1280
    move-result v4

    .line 1281
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->setId(I)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v3

    .line 1285
    const-string v4, "nativeAdOptions"

    .line 1286
    .line 1287
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v4

    .line 1291
    check-cast v4, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;

    .line 1292
    .line 1293
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->setNativeAdOptions(Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v3

    .line 1297
    new-instance v4, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 1298
    .line 1299
    invoke-direct {v4, v5}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;-><init>(Landroid/content/Context;)V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->setFlutterAdLoader(Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v3

    .line 1306
    invoke-virtual {v1, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v4

    .line 1310
    check-cast v4, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    .line 1311
    .line 1312
    invoke-virtual {v3, v4}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->setNativeTemplateStyle(Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v3

    .line 1316
    invoke-virtual {v3}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->build()Lio/flutter/plugins/googlemobileads/FlutterNativeAd;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v3

    .line 1320
    iget-object v4, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1321
    .line 1322
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    check-cast v1, Ljava/lang/Integer;

    .line 1327
    .line 1328
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1329
    .line 1330
    .line 1331
    move-result v1

    .line 1332
    invoke-virtual {v4, v3, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->trackAd(Lio/flutter/plugins/googlemobileads/FlutterAd;I)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v3}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->load()V

    .line 1336
    .line 1337
    .line 1338
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1339
    .line 1340
    .line 1341
    return-void

    .line 1342
    :pswitch_12
    new-instance v3, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;

    .line 1343
    .line 1344
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v4

    .line 1348
    check-cast v4, Ljava/lang/Integer;

    .line 1349
    .line 1350
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1351
    .line 1352
    .line 1353
    move-result v6

    .line 1354
    iget-object v7, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1355
    .line 1356
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v4

    .line 1360
    move-object v8, v4

    .line 1361
    check-cast v8, Ljava/lang/String;

    .line 1362
    .line 1363
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v4

    .line 1367
    move-object v9, v4

    .line 1368
    check-cast v9, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 1369
    .line 1370
    invoke-virtual {v0, v5}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->getBannerAdCreator(Landroid/content/Context;)Lio/flutter/plugins/googlemobileads/BannerAdCreator;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v10

    .line 1374
    move-object v5, v3

    .line 1375
    invoke-direct/range {v5 .. v10}, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/BannerAdCreator;)V

    .line 1376
    .line 1377
    .line 1378
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1379
    .line 1380
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v1

    .line 1384
    check-cast v1, Ljava/lang/Integer;

    .line 1385
    .line 1386
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1387
    .line 1388
    .line 1389
    move-result v1

    .line 1390
    invoke-virtual {v3, v5, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->trackAd(Lio/flutter/plugins/googlemobileads/FlutterAd;I)V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v5}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->load()V

    .line 1394
    .line 1395
    .line 1396
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1397
    .line 1398
    .line 1399
    return-void

    .line 1400
    :pswitch_13
    iget-object v1, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    .line 1401
    .line 1402
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v1

    .line 1406
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1407
    .line 1408
    .line 1409
    return-void

    .line 1410
    :pswitch_14
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v3

    .line 1414
    check-cast v3, Ljava/lang/String;

    .line 1415
    .line 1416
    invoke-static {v3}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v3

    .line 1420
    move-object/from16 v17, v3

    .line 1421
    .line 1422
    check-cast v17, Ljava/lang/String;

    .line 1423
    .line 1424
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v3

    .line 1428
    move-object/from16 v18, v3

    .line 1429
    .line 1430
    check-cast v18, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 1431
    .line 1432
    invoke-virtual {v1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v3

    .line 1436
    check-cast v3, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 1437
    .line 1438
    if-eqz v18, :cond_2b

    .line 1439
    .line 1440
    new-instance v14, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd;

    .line 1441
    .line 1442
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v3

    .line 1446
    check-cast v3, Ljava/lang/Integer;

    .line 1447
    .line 1448
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1449
    .line 1450
    .line 1451
    move-result v15

    .line 1452
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1453
    .line 1454
    invoke-static {v3}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v3

    .line 1458
    move-object/from16 v16, v3

    .line 1459
    .line 1460
    check-cast v16, Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1461
    .line 1462
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 1463
    .line 1464
    invoke-direct {v3, v5}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;-><init>(Landroid/content/Context;)V

    .line 1465
    .line 1466
    .line 1467
    move-object/from16 v19, v3

    .line 1468
    .line 1469
    invoke-direct/range {v14 .. v19}, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)V

    .line 1470
    .line 1471
    .line 1472
    goto :goto_4

    .line 1473
    :cond_2b
    if-eqz v3, :cond_2c

    .line 1474
    .line 1475
    new-instance v14, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd;

    .line 1476
    .line 1477
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v4

    .line 1481
    check-cast v4, Ljava/lang/Integer;

    .line 1482
    .line 1483
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1484
    .line 1485
    .line 1486
    move-result v15

    .line 1487
    iget-object v4, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1488
    .line 1489
    invoke-static {v4}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v4

    .line 1493
    move-object/from16 v16, v4

    .line 1494
    .line 1495
    check-cast v16, Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1496
    .line 1497
    new-instance v4, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 1498
    .line 1499
    invoke-direct {v4, v5}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;-><init>(Landroid/content/Context;)V

    .line 1500
    .line 1501
    .line 1502
    move-object/from16 v18, v3

    .line 1503
    .line 1504
    move-object/from16 v19, v4

    .line 1505
    .line 1506
    invoke-direct/range {v14 .. v19}, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)V

    .line 1507
    .line 1508
    .line 1509
    :goto_4
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1510
    .line 1511
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v1

    .line 1515
    check-cast v1, Ljava/lang/Integer;

    .line 1516
    .line 1517
    invoke-static {v1}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v1

    .line 1521
    check-cast v1, Ljava/lang/Integer;

    .line 1522
    .line 1523
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1524
    .line 1525
    .line 1526
    move-result v1

    .line 1527
    invoke-virtual {v3, v14, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->trackAd(Lio/flutter/plugins/googlemobileads/FlutterAd;I)V

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v14}, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd;->load()V

    .line 1531
    .line 1532
    .line 1533
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1534
    .line 1535
    .line 1536
    return-void

    .line 1537
    :cond_2c
    invoke-interface {v2, v8, v7, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1538
    .line 1539
    .line 1540
    return-void

    .line 1541
    :pswitch_15
    const-string v3, "webViewId"

    .line 1542
    .line 1543
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v1

    .line 1547
    check-cast v1, Ljava/lang/Integer;

    .line 1548
    .line 1549
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    .line 1550
    .line 1551
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1552
    .line 1553
    .line 1554
    move-result v1

    .line 1555
    iget-object v4, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 1556
    .line 1557
    invoke-virtual {v4}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v4

    .line 1561
    invoke-virtual {v3, v1, v4}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;->registerWebView(ILio/flutter/embedding/engine/FlutterEngine;)V

    .line 1562
    .line 1563
    .line 1564
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1565
    .line 1566
    .line 1567
    return-void

    .line 1568
    :pswitch_16
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;

    .line 1569
    .line 1570
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v4

    .line 1574
    check-cast v4, Ljava/lang/Integer;

    .line 1575
    .line 1576
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1577
    .line 1578
    .line 1579
    move-result v6

    .line 1580
    iget-object v4, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1581
    .line 1582
    invoke-static {v4}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v4

    .line 1586
    move-object v7, v4

    .line 1587
    check-cast v7, Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1588
    .line 1589
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v4

    .line 1593
    check-cast v4, Ljava/lang/String;

    .line 1594
    .line 1595
    invoke-static {v4}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v4

    .line 1599
    move-object v8, v4

    .line 1600
    check-cast v8, Ljava/lang/String;

    .line 1601
    .line 1602
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v4

    .line 1606
    check-cast v4, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 1607
    .line 1608
    invoke-virtual {v1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v9

    .line 1612
    move-object v10, v9

    .line 1613
    check-cast v10, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 1614
    .line 1615
    new-instance v11, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 1616
    .line 1617
    invoke-direct {v11, v5}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;-><init>(Landroid/content/Context;)V

    .line 1618
    .line 1619
    .line 1620
    move-object v5, v3

    .line 1621
    move-object v9, v4

    .line 1622
    invoke-direct/range {v5 .. v11}, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)V

    .line 1623
    .line 1624
    .line 1625
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1626
    .line 1627
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v1

    .line 1631
    check-cast v1, Ljava/lang/Integer;

    .line 1632
    .line 1633
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1634
    .line 1635
    .line 1636
    move-result v1

    .line 1637
    invoke-virtual {v3, v5, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->trackAd(Lio/flutter/plugins/googlemobileads/FlutterAd;I)V

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual {v5}, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->load()V

    .line 1641
    .line 1642
    .line 1643
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1644
    .line 1645
    .line 1646
    return-void

    .line 1647
    :pswitch_17
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    .line 1648
    .line 1649
    const-string v4, "muted"

    .line 1650
    .line 1651
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v1

    .line 1655
    check-cast v1, Ljava/lang/Boolean;

    .line 1656
    .line 1657
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1658
    .line 1659
    .line 1660
    move-result v1

    .line 1661
    invoke-virtual {v3, v1}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;->setAppMuted(Z)V

    .line 1662
    .line 1663
    .line 1664
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1665
    .line 1666
    .line 1667
    return-void

    .line 1668
    :pswitch_18
    new-instance v4, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;

    .line 1669
    .line 1670
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v3

    .line 1674
    check-cast v3, Ljava/lang/Integer;

    .line 1675
    .line 1676
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1677
    .line 1678
    .line 1679
    move-result v3

    .line 1680
    iget-object v6, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1681
    .line 1682
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v7

    .line 1686
    check-cast v7, Ljava/lang/String;

    .line 1687
    .line 1688
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v8

    .line 1692
    check-cast v8, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 1693
    .line 1694
    new-instance v9, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 1695
    .line 1696
    invoke-direct {v9, v5}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;-><init>(Landroid/content/Context;)V

    .line 1697
    .line 1698
    .line 1699
    move v5, v3

    .line 1700
    invoke-direct/range {v4 .. v9}, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)V

    .line 1701
    .line 1702
    .line 1703
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 1704
    .line 1705
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v1

    .line 1709
    check-cast v1, Ljava/lang/Integer;

    .line 1710
    .line 1711
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1712
    .line 1713
    .line 1714
    move-result v1

    .line 1715
    invoke-virtual {v3, v4, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->trackAd(Lio/flutter/plugins/googlemobileads/FlutterAd;I)V

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v4}, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->load()V

    .line 1719
    .line 1720
    .line 1721
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1722
    .line 1723
    .line 1724
    return-void

    .line 1725
    :pswitch_19
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v1

    .line 1729
    check-cast v1, Ljava/lang/String;

    .line 1730
    .line 1731
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->flutterMobileAds:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    .line 1732
    .line 1733
    invoke-virtual {v3, v5, v1}, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;->openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V

    .line 1734
    .line 1735
    .line 1736
    invoke-interface {v2, v13}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1737
    .line 1738
    .line 1739
    return-void

    .line 1740
    :cond_2d
    :goto_5
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 1741
    .line 1742
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74cc200d -> :sswitch_19
        -0x73bda50b -> :sswitch_18
        -0x6cdd4229 -> :sswitch_17
        -0x699434b8 -> :sswitch_16
        -0x5cdc65ff -> :sswitch_15
        -0x5c523da9 -> :sswitch_14
        -0x53263dd8 -> :sswitch_13
        -0x4be76439 -> :sswitch_12
        -0x398c6e60 -> :sswitch_11
        -0x36c202d9 -> :sswitch_10
        -0x2dc7f84f -> :sswitch_f
        -0x28540aad -> :sswitch_e
        -0x2218b08b -> :sswitch_d
        -0x1fc757d2 -> :sswitch_c
        -0x1a08c958 -> :sswitch_b
        -0xa4c77ad -> :sswitch_a
        0x56c1def -> :sswitch_9
        0xef422a2 -> :sswitch_8
        0x1045b9ba -> :sswitch_7
        0x11316e25 -> :sswitch_6
        0x12d86e45 -> :sswitch_5
        0x3f6c8375 -> :sswitch_4
        0x50d09b6d -> :sswitch_3
        0x53a942a5 -> :sswitch_2
        0x630fa5bc -> :sswitch_1
        0x70385ca3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->instanceManager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->setActivity(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->adMessageCodec:Lio/flutter/plugins/googlemobileads/AdMessageCodec;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->setContext(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;->userMessagingPlatformManager:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->setActivity(Landroid/app/Activity;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method
