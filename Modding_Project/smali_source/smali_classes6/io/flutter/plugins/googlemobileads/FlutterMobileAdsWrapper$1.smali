.class Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper$1;->this$0:Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper$1;->val$listener:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterMobileAdsWrapper$1;->val$listener:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
