.class Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/ads/admanager/AppEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd$1;->this$0:Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd$1;->this$0:Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;

    .line 2
    .line 3
    iget-object v1, v0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 4
    .line 5
    iget v0, v0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 6
    .line 7
    invoke-virtual {v1, v0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAppEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
