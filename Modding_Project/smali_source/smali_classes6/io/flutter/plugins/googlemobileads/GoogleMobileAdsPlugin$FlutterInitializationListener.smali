.class final Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$FlutterInitializationListener;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlutterInitializationListener"
.end annotation


# instance fields
.field private isInitializationCompleted:Z

.field private final result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method private constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .param p1    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$FlutterInitializationListener;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$FlutterInitializationListener;->isInitializationCompleted:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$FlutterInitializationListener;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method


# virtual methods
.method public onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/ads/initialization/InitializationStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$FlutterInitializationListener;->isInitializationCompleted:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    const-class v2, Lcom/google/android/gms/ads/MobileAds;

    .line 9
    .line 10
    const-string v3, "setPlugin"

    .line 11
    .line 12
    new-array v4, v1, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v5, Ljava/lang/String;

    .line 15
    .line 16
    aput-object v5, v4, v0

    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    .line 24
    .line 25
    new-array v3, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v4, "Flutter-GMA-5.3.1"

    .line 28
    .line 29
    aput-object v4, v3, v0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$FlutterInitializationListener;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 36
    .line 37
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterInitializationStatus;

    .line 38
    .line 39
    invoke-direct {v2, p1}, Lio/flutter/plugins/googlemobileads/FlutterInitializationStatus;-><init>(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$FlutterInitializationListener;->isInitializationCompleted:Z

    .line 46
    .line 47
    return-void
.end method
