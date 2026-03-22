.class Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;
.super Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private customTargeting:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customTargetingLists:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private publisherProvidedId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
    .locals 15

    .line 2
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 3
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->getKeywords()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->getContentUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->customTargeting:Ljava/util/Map;

    iget-object v4, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->customTargetingLists:Ljava/util/Map;

    .line 5
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->getNonPersonalizedAds()Ljava/lang/Boolean;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->getNeighboringContentUrls()Ljava/util/List;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->getHttpTimeoutMillis()Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->publisherProvidedId:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->getMediationExtrasIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->getMediationNetworkExtrasProvider()Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    move-result-object v10

    .line 10
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->getAdMobExtras()Ljava/util/Map;

    move-result-object v11

    .line 11
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->getRequestAgent()Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->getMediationExtras()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->build()Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCustomTargeting(Ljava/util/Map;)Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->customTargeting:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCustomTargetingLists(Ljava/util/Map;)Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->customTargetingLists:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPublisherProvidedId(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->publisherProvidedId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
