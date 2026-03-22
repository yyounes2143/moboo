.class public Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/service/PublishRecommendationClustersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 9
    .line 10
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;)Lcom/google/android/engage/common/datamodel/AccountProfile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;->zzc:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public addRecommendationCluster(Lcom/google/android/engage/common/datamodel/RecommendationCluster;)Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/RecommendationCluster;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/service/PublishRecommendationClustersRequest;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;-><init>(Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;Lcom/google/android/engage/service/zzaj;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAccountProfile(Lcom/google/android/engage/common/datamodel/AccountProfile;)Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/AccountProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSyncAcrossDevices(Z)Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/engage/service/PublishRecommendationClustersRequest$Builder;->zzc:Z

    .line 2
    .line 3
    return-object p0
.end method
