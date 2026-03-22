.class Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;
    }
.end annotation


# instance fields
.field private final adMobExtras:Ljava/util/Map;
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

.field private final contentUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final httpTimeoutMillis:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final keywords:Ljava/util/List;
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

.field private final mediationExtras:Ljava/util/List;
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

.field private final mediationExtrasIdentifier:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final neighboringContentUrls:Ljava/util/List;
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

.field private final nonPersonalizedAds:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final requestAgent:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->keywords:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->contentUrl:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->nonPersonalizedAds:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object p4, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->neighboringContentUrls:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->httpTimeoutMillis:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-object p6, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtrasIdentifier:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 17
    .line 18
    iput-object p8, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->adMobExtras:Ljava/util/Map;

    .line 19
    .line 20
    iput-object p9, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->requestAgent:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p10, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtras:Ljava/util/List;

    .line 23
    .line 24
    return-void
.end method

.method private addNetworkExtras(Lcom/google/android/gms/ads/AbstractAdRequestBuilder;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/ads/AbstractAdRequestBuilder<",
            "TT;>;>(",
            "Lcom/google/android/gms/ads/AbstractAdRequestBuilder<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtras:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;->getMediationExtras()Landroid/util/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Ljava/lang/Class;

    .line 33
    .line 34
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtrasIdentifier:Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {v1, p2, v2}, Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;->getMediationExtras(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->adMobExtras:Ljava/util/Map;

    .line 56
    .line 57
    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_3

    .line 66
    .line 67
    new-instance p2, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->adMobExtras:Ljava/util/Map;

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/util/Map$Entry;

    .line 93
    .line 94
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->nonPersonalizedAds:Ljava/lang/Boolean;

    .line 114
    .line 115
    if-eqz p2, :cond_5

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_5

    .line 122
    .line 123
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    check-cast p2, Landroid/os/Bundle;

    .line 128
    .line 129
    if-nez p2, :cond_4

    .line 130
    .line 131
    new-instance p2, Landroid/os/Bundle;

    .line 132
    .line 133
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 134
    .line 135
    .line 136
    :cond_4
    const-string v2, "npa"

    .line 137
    .line 138
    const-string v3, "1"

    .line 139
    .line 140
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljava/util/Map$Entry;

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Ljava/lang/Class;

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Landroid/os/Bundle;

    .line 177
    .line 178
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    return-void
.end method


# virtual methods
.method public asAdRequest(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->updateAdRequestBuilder(Lcom/google/android/gms/ads/AbstractAdRequestBuilder;Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 12
    .line 13
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->keywords:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->keywords:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->contentUrl:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->contentUrl:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->nonPersonalizedAds:Ljava/lang/Boolean;

    .line 34
    .line 35
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->nonPersonalizedAds:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->neighboringContentUrls:Ljava/util/List;

    .line 44
    .line 45
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->neighboringContentUrls:Ljava/util/List;

    .line 46
    .line 47
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->httpTimeoutMillis:Ljava/lang/Integer;

    .line 54
    .line 55
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->httpTimeoutMillis:Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtrasIdentifier:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtrasIdentifier:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 74
    .line 75
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 76
    .line 77
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->adMobExtras:Ljava/util/Map;

    .line 84
    .line 85
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->adMobExtras:Ljava/util/Map;

    .line 86
    .line 87
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtras:Ljava/util/List;

    .line 94
    .line 95
    iget-object p1, p1, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtras:Ljava/util/List;

    .line 96
    .line 97
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    return v0

    .line 104
    :cond_2
    return v2
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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->adMobExtras:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->contentUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHttpTimeoutMillis()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->httpTimeoutMillis:Ljava/lang/Integer;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->keywords:Ljava/util/List;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtras:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediationExtrasIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtrasIdentifier:Ljava/lang/String;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->neighboringContentUrls:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNonPersonalizedAds()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->nonPersonalizedAds:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestAgent()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->requestAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->keywords:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->contentUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->nonPersonalizedAds:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v3, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->neighboringContentUrls:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->httpTimeoutMillis:Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object v5, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtrasIdentifier:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 14
    .line 15
    iget-object v7, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->mediationExtras:Ljava/util/List;

    .line 16
    .line 17
    const/16 v8, 0x8

    .line 18
    .line 19
    new-array v8, v8, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    aput-object v0, v8, v9

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    aput-object v1, v8, v0

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    aput-object v2, v8, v0

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    aput-object v3, v8, v0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    aput-object v4, v8, v0

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    aput-object v5, v8, v0

    .line 38
    .line 39
    const/4 v0, 0x6

    .line 40
    aput-object v6, v8, v0

    .line 41
    .line 42
    const/4 v0, 0x7

    .line 43
    aput-object v7, v8, v0

    .line 44
    .line 45
    invoke-static {v8}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    return v0
.end method

.method public updateAdRequestBuilder(Lcom/google/android/gms/ads/AbstractAdRequestBuilder;Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/ads/AbstractAdRequestBuilder<",
            "TT;>;>(",
            "Lcom/google/android/gms/ads/AbstractAdRequestBuilder<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/ads/AbstractAdRequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->keywords:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->contentUrl:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->addNetworkExtras(Lcom/google/android/gms/ads/AbstractAdRequestBuilder;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->neighboringContentUrls:Ljava/util/List;

    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setNeighboringContentUrls(Ljava/util/List;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->httpTimeoutMillis:Ljava/lang/Integer;

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setHttpTimeoutMillis(I)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->requestAgent:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 56
    .line 57
    .line 58
    return-object p1
.end method
