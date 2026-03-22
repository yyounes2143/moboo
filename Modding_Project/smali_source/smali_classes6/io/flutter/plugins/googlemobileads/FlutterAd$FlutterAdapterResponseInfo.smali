.class Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlemobileads/FlutterAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlutterAdapterResponseInfo"
.end annotation


# instance fields
.field private final adSourceId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final adSourceInstanceId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final adSourceInstanceName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final adSourceName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final adUnitMapping:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
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

.field private final adapterClassName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final description:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private error:Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final latencyMillis:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdapterResponseInfo;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/ads/AdapterResponseInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adapterClassName:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getLatencyMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->latencyMillis:J

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->description:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getCredentials()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adUnitMapping:Ljava/util/Map;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getCredentials()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adUnitMapping:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getCredentials()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adUnitMapping:Ljava/util/Map;

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdError()Lcom/google/android/gms/ads/AdError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdError()Lcom/google/android/gms/ads/AdError;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;-><init>(Lcom/google/android/gms/ads/AdError;)V

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->error:Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceId:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceInstanceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceName:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceInstanceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adapterClassName:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->latencyMillis:J

    .line 19
    iput-object p4, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->description:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adUnitMapping:Ljava/util/Map;

    .line 21
    iput-object p6, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->error:Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 22
    iput-object p7, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceName:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceId:Ljava/lang/String;

    .line 24
    iput-object p9, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceName:Ljava/lang/String;

    .line 25
    iput-object p10, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;

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
    check-cast p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adapterClassName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adapterClassName:Ljava/lang/String;

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
    iget-wide v3, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->latencyMillis:J

    .line 24
    .line 25
    iget-wide v5, p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->latencyMillis:J

    .line 26
    .line 27
    cmp-long v1, v3, v5

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->description:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->description:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->error:Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 42
    .line 43
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->error:Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 44
    .line 45
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adUnitMapping:Ljava/util/Map;

    .line 52
    .line 53
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adUnitMapping:Ljava/util/Map;

    .line 54
    .line 55
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceName:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceId:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceId:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceName:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v3, p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceName:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceId:Ljava/lang/String;

    .line 92
    .line 93
    iget-object p1, p1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceId:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    return v0

    .line 102
    :cond_2
    return v2
.end method

.method public getAdSourceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdSourceInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdSourceInstanceName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdSourceName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdUnitMapping()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adUnitMapping:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adapterClassName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getError()Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->error:Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLatencyMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->latencyMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adapterClassName:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->latencyMillis:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->description:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->error:Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 12
    .line 13
    iget-object v4, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceId:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v6, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v7, p0, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->adSourceInstanceId:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v8, 0x8

    .line 22
    .line 23
    new-array v8, v8, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    aput-object v0, v8, v9

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object v1, v8, v0

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    aput-object v2, v8, v0

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    aput-object v3, v8, v0

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    aput-object v4, v8, v0

    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    aput-object v5, v8, v0

    .line 42
    .line 43
    const/4 v0, 0x6

    .line 44
    aput-object v6, v8, v0

    .line 45
    .line 46
    const/4 v0, 0x7

    .line 47
    aput-object v7, v8, v0

    .line 48
    .line 49
    invoke-static {v8}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0
.end method
