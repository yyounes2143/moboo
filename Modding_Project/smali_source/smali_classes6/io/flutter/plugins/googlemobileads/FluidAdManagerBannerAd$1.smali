.class Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->onAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd$1;->this$0:Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd$1;->this$0:Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;

    .line 6
    .line 7
    invoke-static {p2}, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->access$000(Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eq p1, p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd$1;->this$0:Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;

    .line 14
    .line 15
    iget-object p3, p2, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 16
    .line 17
    iget p2, p2, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 18
    .line 19
    invoke-virtual {p3, p2, p1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onFluidAdHeightChanged(II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd$1;->this$0:Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;

    .line 23
    .line 24
    invoke-static {p2, p1}, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->access$002(Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;I)I

    .line 25
    .line 26
    .line 27
    return-void
.end method
