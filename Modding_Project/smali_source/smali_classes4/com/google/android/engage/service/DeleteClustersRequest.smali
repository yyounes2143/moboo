.class public Lcom/google/android/engage/service/DeleteClustersRequest;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/service/DeleteClustersRequest$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/common/collect/ImmutableList;

.field private final zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:I

.field private final zzd:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/service/DeleteClustersRequest$Builder;Lcom/google/android/engage/service/zzaf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzc(Lcom/google/android/engage/service/DeleteClustersRequest$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

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
    iput-object p2, p0, Lcom/google/android/engage/service/DeleteClustersRequest;->zza:Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzb(Lcom/google/android/engage/service/DeleteClustersRequest$Builder;)Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/google/android/engage/service/DeleteClustersRequest;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zza(Lcom/google/android/engage/service/DeleteClustersRequest$Builder;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p0, Lcom/google/android/engage/service/DeleteClustersRequest;->zzc:I

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzd(Lcom/google/android/engage/service/DeleteClustersRequest$Builder;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput-boolean p1, p0, Lcom/google/android/engage/service/DeleteClustersRequest;->zzd:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public getAccountProfile()Lcom/google/android/engage/common/datamodel/AccountProfile;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/DeleteClustersRequest;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClusterTypeList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/DeleteClustersRequest;->zza:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeleteReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/service/DeleteClustersRequest;->zzc:I

    .line 2
    .line 3
    return v0
.end method

.method public getSyncAcrossDevices()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/service/DeleteClustersRequest;->zzd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zza()Lcom/google/common/base/Optional;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/DeleteClustersRequest;->zza:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v1, Lcom/google/android/engage/service/zzae;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/google/android/engage/service/zzae;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v1, v4}, Lcom/google/android/engage/service/zzae;->zza(I)Lcom/google/android/engage/service/zzae;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/google/android/engage/service/ClusterMetadata;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/google/android/engage/service/ClusterMetadata;-><init>(Lcom/google/android/engage/service/zzae;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
