.class Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlemobileads/FlutterNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adFactory:Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adUnitId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private customOptions:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private nativeAdOptions:Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private nativeTemplateStyle:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/googlemobileads/FlutterNativeAd;
    .locals 14

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adUnitId:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adFactory:Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->nativeTemplateStyle:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "NativeAdFactory and nativeTemplateStyle cannot be null."

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v1, "adRequest or addManagerRequest must be non-null."

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 44
    .line 45
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;

    .line 46
    .line 47
    iget-object v3, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->context:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->id:Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget-object v5, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 56
    .line 57
    iget-object v6, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adUnitId:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v7, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adFactory:Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 60
    .line 61
    iget-object v8, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 62
    .line 63
    iget-object v9, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 64
    .line 65
    iget-object v10, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->customOptions:Ljava/util/Map;

    .line 66
    .line 67
    iget-object v11, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->nativeAdOptions:Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;

    .line 68
    .line 69
    iget-object v12, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->nativeTemplateStyle:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    .line 70
    .line 71
    invoke-direct/range {v2 .. v12}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;-><init>(Landroid/content/Context;ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;Ljava/util/Map;Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;)V

    .line 72
    .line 73
    .line 74
    return-object v2

    .line 75
    :cond_4
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;

    .line 76
    .line 77
    iget-object v4, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->context:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->id:Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iget-object v6, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 86
    .line 87
    iget-object v7, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adUnitId:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v8, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adFactory:Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 90
    .line 91
    iget-object v9, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 92
    .line 93
    iget-object v10, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 94
    .line 95
    iget-object v11, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->customOptions:Ljava/util/Map;

    .line 96
    .line 97
    iget-object v12, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->nativeAdOptions:Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;

    .line 98
    .line 99
    iget-object v13, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->nativeTemplateStyle:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    .line 100
    .line 101
    invoke-direct/range {v3 .. v13}, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;-><init>(Landroid/content/Context;ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;Lio/flutter/plugins/googlemobileads/FlutterAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;Ljava/util/Map;Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;)V

    .line 102
    .line 103
    .line 104
    return-object v3

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string v1, "AdUnitId cannot be null."

    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string v1, "AdInstanceManager cannot be null."

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public setAdFactory(Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adFactory:Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdManagerRequest(Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdUnitId(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->adUnitId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCustomOptions(Ljava/util/Map;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->customOptions:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFlutterAdLoader(Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/FlutterAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method public setId(I)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->id:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setManager(Lio/flutter/plugins/googlemobileads/AdInstanceManager;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNativeAdOptions(Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->nativeAdOptions:Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNativeTemplateStyle(Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->nativeTemplateStyle:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRequest(Lio/flutter/plugins/googlemobileads/FlutterAdRequest;)Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 2
    .line 3
    return-object p0
.end method
