.class public Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adMobExtras:Ljava/util/Map;
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

.field private contentUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private httpTimeoutMillis:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private keywords:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mediationExtras:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;",
            ">;"
        }
    .end annotation
.end field

.field private mediationExtrasIdentifier:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private neighboringContentUrls:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nonPersonalizedAds:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestAgent:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
    .locals 11

    .line 1
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->keywords:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->contentUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->nonPersonalizedAds:Ljava/lang/Boolean;

    .line 8
    .line 9
    iget-object v4, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->neighboringContentUrls:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->httpTimeoutMillis:Ljava/lang/Integer;

    .line 12
    .line 13
    iget-object v6, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->mediationExtrasIdentifier:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 16
    .line 17
    iget-object v8, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->adMobExtras:Ljava/util/Map;

    .line 18
    .line 19
    iget-object v9, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->requestAgent:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->mediationExtras:Ljava/util/List;

    .line 22
    .line 23
    invoke-direct/range {v0 .. v10}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public getAdMobExtras()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->adMobExtras:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->contentUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHttpTimeoutMillis()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->httpTimeoutMillis:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeywords()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->keywords:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediationExtras()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->mediationExtras:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediationExtrasIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->mediationExtrasIdentifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediationNetworkExtrasProvider()Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNeighboringContentUrls()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->neighboringContentUrls:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNonPersonalizedAds()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->nonPersonalizedAds:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestAgent()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->requestAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdMobExtras(Ljava/util/Map;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
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
            "Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->adMobExtras:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->contentUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHttpTimeoutMillis(Ljava/lang/Integer;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->httpTimeoutMillis:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public setKeywords(Ljava/util/List;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->keywords:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMediationExtras(Ljava/util/List;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;",
            ">;)",
            "Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->mediationExtras:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMediationNetworkExtrasIdentifier(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->mediationExtrasIdentifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMediationNetworkExtrasProvider(Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNeighboringContentUrls(Ljava/util/List;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->neighboringContentUrls:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNonPersonalizedAds(Ljava/lang/Boolean;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->nonPersonalizedAds:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRequestAgent(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->requestAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
