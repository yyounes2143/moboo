.class Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory$ErrorTextView;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorTextView"
.end annotation


# instance fields
.field private final textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/widget/TextView;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory$ErrorTextView;->textView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    const/high16 p1, -0x10000

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    const/16 p1, -0x100

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsViewFactory$ErrorTextView;->textView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public synthetic onFlutterViewAttached(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onFlutterViewDetached()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onInputConnectionLocked()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onInputConnectionUnlocked()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
