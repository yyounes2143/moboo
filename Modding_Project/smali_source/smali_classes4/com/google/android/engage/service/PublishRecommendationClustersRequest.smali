.class public Lcom/google/android/engage/service/PublishRecommendationClustersRequest;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/common/collect/ImmutableList;

.field private final zzb:Lcom/google/common/base/Optional;

.field private final zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;Lcom/google/android/engage/service/zzaj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;->zzb(Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->zza:Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;->zza(Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;)Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->zzb:Lcom/google/common/base/Optional;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;->zzc(Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput-boolean p1, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->zzc:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getAccountProfile()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/AccountProfile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->zzb:Lcom/google/common/base/Optional;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommendationClusters()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/engage/common/datamodel/RecommendationCluster;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->zza:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSyncAcrossDevices()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->zzc:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zza()Lcom/google/android/engage/service/zzac;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/engage/service/zzab;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/zzab;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->zza:Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/google/android/engage/common/datamodel/RecommendationCluster;

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Lcom/google/android/engage/service/zzab;->zza(Lcom/google/android/engage/common/datamodel/zzf;)Lcom/google/android/engage/service/zzab;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Lcom/google/android/engage/service/zzac;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/google/android/engage/service/zzac;-><init>(Lcom/google/android/engage/service/zzab;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method
